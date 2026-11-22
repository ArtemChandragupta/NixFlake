{

nixpkgs.overlays = [
  (
    final: prev:
    let
      # Keep the upstream package (and its existing preConfigure workaround)
      # as a separate, cached derivation.
      base = prev.amnezia-vpn.overrideAttrs (oldAttrs: {
        preConfigure =
          (oldAttrs.preConfigure or "")
          + ''
            export PROD_AGW_PUBLIC_KEY="$(printf '%s' "$PROD_AGW_PUBLIC_KEY" | sed 's/[\]n$//')"
            export DEV_AGW_PUBLIC_KEY="$(printf '%s' "$DEV_AGW_PUBLIC_KEY" | sed 's/[\]n$//')"
          '';
      });
    in
    {
      # Relocate the prebuilt output and point the tray icons at /etc/amnezia.
      # Icons live outside the package, so changing them does not rebuild the
      # client.
      #
      # pname/version must match the base package: the install phase rewrites
      # the old store prefix in place and therefore needs both paths to have
      # the same length.
      amnezia-vpn = prev.stdenvNoCC.mkDerivation {
        pname = base.pname;
        version = base.version;

        dontUnpack = true;
        dontConfigure = true;
        dontBuild = true;
        dontFixup = true;

        installPhase = ''
          runHook preInstall

          mkdir -p $out
          cp -a ${base}/. $out/
          chmod -R u+w $out

          replace_same_length() {
            local file="$1" old="$2" new="$3" offsets offset
            if [ "''${#old}" -ne "''${#new}" ]; then
              echo "replacement length mismatch for $file: '$old' -> '$new'" >&2
              return 1
            fi
            offsets="$(grep -aboF -- "$old" "$file" | cut -d: -f1)" || {
              echo "pattern not found in $file: $old" >&2
              return 1
            }
            for offset in $offsets; do
              printf '%s' "$new" | dd of="$file" bs=1 seek="$offset" conv=notrunc status=none
            done
          }

          # Point every embedded reference (wrappers, systemd unit, libexec
          # path) at the relocated copy.
          while IFS= read -r -d "" file; do
            replace_same_length "$file" "${base}" "$out"
          done < <(grep -rlFZ -- "${base}" "$out")

          # Redirect the tray resources and switch them to SVG. The original
          # format string is exactly 16 bytes and Qt receives that length
          # explicitly, so the replacement must also be 16 bytes. The double
          # slash is collapsed by Linux and keeps the length without an
          # embedded NUL.
          gui="$out/bin/.AmneziaVPN-wrapped"
          replace_same_length "$gui" ":/images/tray/%1" "/etc/amnezia//%1"
          replace_same_length "$gui" "active.png" "active.svg"
          replace_same_length "$gui" "default.png" "default.svg"
          replace_same_length "$gui" "error.png" "error.svg"

          runHook postInstall
        '';

        meta = base.meta;
      };
    }
  )
];

# The patched binary loads its tray icons from here.
environment.etc = {
  "amnezia/active.svg".source = ./icons/active.svg;
  "amnezia/default.svg".source = ./icons/default.svg;
  "amnezia/error.svg".source = ./icons/error.svg;
};

programs.amnezia-vpn.enable = true;

}

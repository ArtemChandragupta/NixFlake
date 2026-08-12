{ pkgs, ... }:
let
  BetterSonoma = pkgs.fetchurl {
    url = "https://static1.squarespace.com/static/5e949a92e17d55230cd1d44f/t/65ca8d7e72b2b13769ced989/1707773333181/BSonoma_Mac.png";
    sha256 = "0y57gfzbb25idryq20i1mcxxsix2k6nnkc6djvhjy4s44j7n3873";
  };
  BlissDay = pkgs.fetchurl {
    url = "https://static1.squarespace.com/static/5e949a92e17d55230cd1d44f/t/610acd62299dda29b28e1292/1628097932845/BlissDayiMac6K+Display.png";
    sha256 = "0scnqqqsar56pcqisxi4c2i5zwhkpbcjnnxsgaqjcvbqgnbdgsqf";
  };
  BlissRainy = pkgs.fetchurl {
    url = "https://static1.squarespace.com/static/5e949a92e17d55230cd1d44f/t/61103f14c1b8266a7c3445a4/1628454705441/macOSBlissRainy6K.png";
    sha256 = "1biplcl50zassc813lk6zgc7vzqazimbbd6fzkv1lk8jxwsch7vb";
  };
  FlutterBronze = pkgs.fetchurl {
    url = "https://static1.squarespace.com/static/5e949a92e17d55230cd1d44f/t/678341bdc07b5c2e712243f5/1736655308172/F06_Mac.png";
    sha256 = "sha256-sW5sgqjRHk7SFp1VqwVgDQfdBXl+4lzQVcdTZX1Jmqg=";
  };
in
{

services.awww.enable = true;

home.file = {
  ".wallpaper/BetterSonoma.png".source = BetterSonoma;
  ".wallpaper/BlissDay.png".source   = BlissDay;
  ".wallpaper/BlissRainy.png".source = BlissRainy;
  ".wallpaper/FlutterBronze.png".source = FlutterBronze;
};

}

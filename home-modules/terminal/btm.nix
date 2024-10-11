{

programs.bottom.enable = true;

home.file.".config/bottom/bottom.toml".text = /*toml*/''
[flags]
tree = true
default_widget_type = "proc"

[[row]]
  [[row.child]]
  ratio=2
  type="cpu"
  [[row.child]]
  type="network"
[[row]]
  ratio=2
  [[row.child]]
  type="proc"
'';

}

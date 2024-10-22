function get_wsp_in_i(i) {
  let tmp = Hyprland.workspaces;
  // sort by id
  tmp.sort((a, b) => a.id - b.id);
  return tmp[i.toString() - 1].id;
}

// Dynamic Hyprland Workspaces button 
const Workspaces = () => Widget.Box({
  className: 'bar-wsp-pll',
  hpack: "center",
  // TO IMPROVE: Use a sub-property of Hyprland to find out when to update
  connections: [[Hyprland, self => {
    // generates an array of buttons, indicating the ws
    const arr = Array.from({ length: Hyprland.workspaces.length }, (_, i) => i + 1);
    self.children = arr.map(i => Widget.Button({
      // a bit stupid, but works
      onPrimaryClick: () => execAsync(`hyprctl dispatch workspace ${get_wsp_in_i(i)}`),
      className: Hyprland.active.workspace.id == get_wsp_in_i(i) ? 'bar-wsp-foc' : 'bar-wsp',
    }));
  }]],
});

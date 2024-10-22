const Hyprland = await Service.import("hyprland");

var monitorsActiveWorkspaceCache = new Array(10).fill(-1);

const is_active = (workspaceID) => {
  let monitorID = Hyprland.getWorkspace(workspaceID).monitorID;
  var monitor = Hyprland.getMonitor(monitorID);

  let activeID = -1;
  if (monitor == undefined) {
    activeID = monitorsActiveWorkspaceCache[monitorID];
  } else {
    monitorsActiveWorkspaceCache[monitorID] = monitor.activeWorkspace.id;
    activeID = monitor.activeWorkspace.id;
  }
  return workspaceID == activeID;
}

export const WorkspacesModule = (monitorID) => Widget.Box({
  class_name: 'WorkspacesModule',
  children: Hyprland.bind('workspaces').transform(ws => {
    return ws
      .filter(({ id, name }) => {
        // Only show the workspaces belonging to the monitor
        return Hyprland.getWorkspace(id).monitorID == monitorID;
      })
      .sort((a, b) => a.id - b.id) // Show in order of ID
      .map(({ id, name }) => Widget.Button({
        on_clicked: () => Hyprland.sendMessage(`dispatch workspace ${id}`),
        child: Widget.Label(`${name}`),
        class_name: Hyprland.active.workspace.bind('id')
          .transform(i => `WorkButton${is_active(id) ? 'focused' : ''}`),
      }));
  }),
});

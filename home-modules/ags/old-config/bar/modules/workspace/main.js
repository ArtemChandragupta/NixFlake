const hyprland = await Service.import("hyprland");

export function WorkspacesModule() {
  const activeId = hyprland.active.workspace.bind("id");
  const workspaces = hyprland.bind("workspaces").as((ws) =>
    ws
      .sort((a, b) => a.id >= b.id)
      .map(({ id, name }) =>
        Widget.Button({
          on_clicked: () => hyprland.messageAsync(`dispatch workspace ${id}`),
          child: Widget.Label(
            name.length > 10 ? name.slice(0, 10) + "..." : name,
          ),
          class_name: activeId.as((i) => `${i === id ? "focused" : ""}`),
          tooltipText: name,
        }),
      ),
  );
  return Widget.Box({
    class_name: "workspaces",
    children: workspaces,
  });
}

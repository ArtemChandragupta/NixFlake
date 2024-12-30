import { bind } from "astal"
import Hyprland from "gi://AstalHyprland";

export function WorkspacesModule() {
  const hypr = Hyprland.get_default();

  return (
    <box className = "WorkspaceModule"> 
      {bind(hypr, "workspaces").as(
        workspaces => workspaces.sort((a, b) => a.id - b.id).map(workspace => (
          <button 
            className = {bind(hypr, "focusedWorkspace").as(
              x => x.id === workspace.id ? "focused-workspace workspace-btn" : "workspace-btn"
            )}
            cursor = "pointer"
            onClicked = {() => hypr.message(`dispatch workspace ${workspace.id}`)}
          >
            {bind(workspace, "name").as(name => name)}
          </button>
        ))
      )}
    </box>
  );
}

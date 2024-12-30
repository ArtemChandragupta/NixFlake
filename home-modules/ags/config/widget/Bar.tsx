import { App, Astal, Gtk, Gdk } from "astal/gtk3"
import Battery  from "gi://AstalBattery"

import { WorkspacesModule } from "./modules/workspace/main"
import { ClockModule      } from "./modules/clock/main"
import { BatteryModule    } from "./modules/battery/main"

export default function Bar(gdkmonitor: Gdk.Monitor) {
  return <window
    className   = "Bar"
    gdkmonitor  = {gdkmonitor}
    exclusivity = {Astal.Exclusivity.EXCLUSIVE}
    anchor      = {Astal.WindowAnchor.TOP
                  |Astal.WindowAnchor.LEFT
                  |Astal.WindowAnchor.RIGHT}
    application = {App}
  >
    <centerbox>
      <box hexpand halign = {Gtk.Align.START} className = "gap-children">
        <WorkspacesModule />
      </box>
      <ClockModule />
      <box hexpand halign = {Gtk.Align.END  } className = "gap-children">
        {Battery.get_default().isBattery ? <BatteryModule /> : null}
      </box>
    </centerbox>
  </window>
}

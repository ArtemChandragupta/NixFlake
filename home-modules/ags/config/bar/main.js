import { FlakeModule } from "./modules/flake/main.js"
import { TrayModule } from "./modules/tray/main.js"
import { WorkspacesModule } from "./modules/workspace/main.js"
import { ClockModule } from "./modules/clock/main.js"
import { BatteryModule } from "./modules/battery/main.js"
import { CpuModule } from "./modules/cpu/main.js"
import { TemperatureModule } from "./modules/temperature/main.js"
import { MemoryModule } from "./modules/memory/main.js"
import { BacklightModule } from "./modules/backlight/main.js"
import { VolumeModule } from "./modules/volume/main.js"


function Left() {
  return Widget.Box({
    spacing: 8,
    children: [
      FlakeModule(),
      TrayModule(),
      WorkspacesModule(),
    ],
  })
}

function Center() {
  return Widget.Box({
    spacing: 8,
    children: [
      ClockModule(),
    ],
  })
}

function Right() {
  return Widget.Box({
    hpack: "end",
    spacing: 8,
    children: [
      BatteryModule(),
      CpuModule(),
      TemperatureModule(),
      MemoryModule(),
      BacklightModule(),
      VolumeModule(),
    ],
  })
}

export function Bar(monitor = 0) {
  return Widget.Window({
    name: `bar-${monitor}`,
    class_name: "bar",
    monitor,
    anchor: ["top", "left", "right"],
    exclusivity: "exclusive",
    margins: [5, 10, -5, 10],
    child: Widget.CenterBox({
      start_widget: Left(),
      center_widget: Center(),
      end_widget: Right(),
    }),
  })
}

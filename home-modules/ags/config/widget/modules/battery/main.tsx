import Battery  from "gi://AstalBattery"
import { bind } from "astal"

export function BatteryModule() {
  const bat = Battery.get_default();

  return <box 
    css       = {bind(bat,"percentage").as(x => x < 20 ? "color:#B8BB26;" : "color:#E02828")}
    cursor    = "pointer"
    className = "BatteryModule"
  >
    <icon  icon  = {bind(bat, "batteryIconName"                              )} />
    <label label = {bind(bat, "percentage").as(p =>`${Math.floor(p * 100)} %`)} />
  </box>;
}

import { App, Astal, Gtk, Gdk } from "astal/gtk3"
import { Variable, bind }       from "astal"

import Hyprland from "gi://AstalHyprland";
import Battery  from "gi://AstalBattery" ;
import Network  from "gi://AstalNetwork" ;
import AudioWp  from "gi://AstalWp"      ;

function VolumeWidget() {
  const audio = AudioWp.get_default()?.audio;
  if (!audio?.defaultSpeaker) throw Error("NO AUDIO SPEAKER!!")

  return <box className="AudioSlider" tooltipText={
    bind(audio.defaultSpeaker, "volume").as(x => `Volume ${Math.floor(x * 100)}%`)
  }>
    <icon icon={bind(audio.defaultSpeaker, "volumeIcon")} />
    <slider
      className="slider"
      hexpand
      onDragged = {({ value }) => audio.defaultSpeaker.volume = value}
      value={bind(audio.defaultSpeaker, "volume")}
    />
  </box>
}

function WorkspacesWidget() {
  const hypr = Hyprland.get_default();
  return <> {bind(hypr, "workspaces").as(
  workspaces => workspaces.sort((a, b) => a.id - b.id).map(workspace => 
    <button className = {bind(hypr, "focusedWorkspace").as
      (x => x.id === workspace.id ? "focused-workspace workspace-btn" : "workspace-btn")
    } onClicked = {
      () => hypr.message(`dispatch workspace ${workspace.id}`)
    }>
  {workspace.name}
    </button>))}
  </>;
}

function TimeWidget() {
  const getTime = () => new Date().toLocaleString("en-US", {
    hour  : "numeric",
    minute: "numeric",
    hour12: false    ,
  });
  // `true` is here because for some reason a command needs to be run.
  const time = Variable("").poll(1000, 'true', getTime);

  return <label label = {bind(time)} />
}

function NetworkWidget() {
  const { wifi } = Network.get_default();

  return <box className = "stat-box" >
    <icon icon        = {bind(wifi, "iconName")           } 
          tooltipText = {bind(wifi, "ssid"    ).as(String)} 
    />
  </box>
}

function BatteryWidget() {
  const bat = Battery.get_default();
  return <box css={bind(bat, "percentage").as(
    x => x > 20 ? "color:#EDF2FA" : "color:#E02828"
  )}>
    <icon icon = {bind(bat, "batteryIconName")} />
  </box>;
}

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
        <NetworkWidget    />
        <WorkspacesWidget />
      </box>
      <TimeWidget />
      <box hexpand halign={Gtk.Align.END} className = "gap-children">
        {Battery.get_default().isBattery ? <BatteryWidget /> : null}
	{                                  <VolumeWidget  />       }
      </box>
    </centerbox>
  </window>
}

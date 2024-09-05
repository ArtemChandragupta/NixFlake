const audio = await Service.import("audio")

function getIcon() {
  const volumeIcons = {
    101: "overamplified",
    67: "high",
    34: "medium",
    1: "low",
    0: "muted",
  }
  const icon = audio.speaker.is_muted ? 0 : [101, 67, 34, 1, 0].find(
    threshold => threshold <= audio.speaker.volume * 100
  )
  return `audio-volume-${volumeIcons[icon]}-symbolic`
}

function getMicrophoneIcon() {
  const VolumeIcons = {
    67: "high",
    34: "medium",
    1: "low",
    0: "muted",
  }
  const icon = audio.microphone.is_muted ? 0 : [101, 67, 34, 1, 0].find(
    threshold => threshold <= audio.microphone.volume * 100
  )
  return `microphone-sensitivity-${VolumeIcons[icon]}-symbolic`
}

export function VolumeModule() {
  return Widget.Box({
    class_name: 'VolumeModule',
    children: [
      Widget.Icon({
        icon: Utils.watch(getIcon(), audio.speaker, getIcon)
      }),
      Widget.Label({
        label: audio.speaker.bind('volume').as(v => ` ${Math.floor(v * 100)}% `),
      }),
      Widget.Icon({
        icon: Utils.watch(getMicrophoneIcon(), audio.microphone, getMicrophoneIcon)
      })
    ],
  })
}


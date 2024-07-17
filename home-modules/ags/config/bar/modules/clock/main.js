const date = Variable("", {
  poll: [1000, 'date "+%H:%M"'],
})

export function ClockModule() {
  return Widget.Button({
    class_name: "ClockModule",
    cursor: "pointer",
    on_clicked: () => Utils.execAsync(['bash', '-c', 'swaync-client -t -sw']),
    child: Widget.Label({ label: date.bind() }),
  })
}

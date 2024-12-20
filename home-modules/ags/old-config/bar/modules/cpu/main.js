const getUsage = Variable("", {
	poll: [
		10000,
		`nu -c "sys cpu | get cpu_usage | math avg | math round"`
	],
});

export function CpuModule() {
	return Widget.Label({
		className: "CpuModule",
		label: getUsage.bind().as(v => `  ${v}%`),
	})
}

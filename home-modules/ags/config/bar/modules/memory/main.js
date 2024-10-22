const getUsage = Variable("", {
	poll: [
		10000,
		`nu -c "sys mem | get used total | $in.0 / $in.1 * 100 | math round"`,
	],
});

export function MemoryModule() {
	return Widget.Label({
		className: "MemoryModule",
		label: getUsage.bind().as(v => `  ${v}%`)
	})
}

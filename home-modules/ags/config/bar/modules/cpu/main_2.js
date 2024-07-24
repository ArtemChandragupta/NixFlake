const getUsage = Variable("", {
	poll: [
		5000,
		`bash -c "top -b -n 1 | grep 'Cpu(s)' | awk '{print $2}'"`,
		(out) => parseFloat(out).toFixed(0),
	],
});

export function CpuModule() {
	return Widget.Label({
		className: "CpuModule",
		label: getUsage.bind().as(v => ` ${v}%`),
	})
}

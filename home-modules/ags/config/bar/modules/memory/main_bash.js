const getUsage = Variable("", {
	poll: [
		10000,
		`bash -c "free -m | awk '/^Mem:/ {print $3/$2*100}'"`,
	],
});

export function MemoryModule() {
	return Widget.Label({
		className: "MemoryModule",
		label: getUsage.bind().as(v => ` ${Math.floor(v)}%`)
	})
}

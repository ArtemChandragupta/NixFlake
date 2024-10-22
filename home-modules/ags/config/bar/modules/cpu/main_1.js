const getUsage = Variable("", {
	poll: [
		5000,
		`bash -c "top -b -n 1 | grep 'Cpu(s)' | awk '{print $2}'"`,
		(out) => parseFloat(out).toFixed(0),
	],
});

export const CpuModule = () => {
	return Widget.Box({
		className: "CpuModule",
		setup: (self) =>
			self.hook(getUsage, () => {
				self.children = [
					Widget.Label({
						className: `cpu`,
						hpack: "start",
						label: " " + getUsage.value.toString() + "%",
					}),
				];
			}),
	});
};

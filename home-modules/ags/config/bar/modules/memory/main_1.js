const getUsage = Variable("", {
	poll: [
		10000,
		`bash -c "free -m | awk '/^Mem:/ {print $3/$2*100}'"`,
	],
});

export const MemoryModule = () =>
	Widget.Box({
		hpack: "start",
		setup: (self) =>
			self.hook(getUsage, () => {
					(self.className = `MemoryModule`),
					(self.children = [
						Widget.Label({
							className: "memory-label",
							hpack: "start",
							vpack: "center",
							label: ` ${Math.floor(getUsage.value)}%`,
						}),
					]);
			}),
	});

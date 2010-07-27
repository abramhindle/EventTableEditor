package EventTableEditor;
class PulsesAlgo implements GrapherAlgo {
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i++) {
			if (Math.random() < .05) {
				data[i] = Math.random();
			}
		}
	}
	public GrapherAlgo prototype() {
		return new PulsesAlgo();
	}
	public String getName() {
		return "Add Pulses";
	}
}

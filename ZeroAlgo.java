package EventTableEditor;
class ZeroAlgo implements GrapherAlgo {
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i++) {
			data[i] = 0;
		}
	}
	public GrapherAlgo prototype() {
		return new ZeroAlgo();
	}
	public String getName() {
		return "Zero";
	}
}

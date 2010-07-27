package EventTableEditor;
class PerforateAlgo implements GrapherAlgo {
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i+=2) {
			data[i] = 0.0;
		}
	}
	public GrapherAlgo prototype() {
		return new PerforateAlgo();
	}
	public String getName() {
		return "Perforate";
	}
}

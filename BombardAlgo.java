package EventTableEditor;
class BombardAlgo implements GrapherAlgo {
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i++) {
			if (Math.random() < .05) {
				data[i] = 0.0;
			}
		}
	}
	public GrapherAlgo prototype() {
		return new ErodeAlgo();
	}
	public String getName() {
		return "Bombard";
	}
}

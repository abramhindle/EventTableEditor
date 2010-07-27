package EventTableEditor;

class ErodeAlgo implements GrapherAlgo {
	int max = 1;
	ErodeAlgo() {

	}
	ErodeAlgo(int m) {
		max = m;
	}
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i++) {
			for (int k = 0 ; k < max; k++) {
				data[i] *= .9+.1*Math.random();
			}
		}
	}
	public GrapherAlgo prototype() {
		return new ErodeAlgo(max);
	}
	public String getName() {
		return "Erode";
	}
}

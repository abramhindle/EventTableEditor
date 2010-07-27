package EventTableEditor;
class RandomizeAlgo implements GrapherAlgo {
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		for (int i = 0; i < data.length ; i++) {
			//if (Math.random() < .5) {
				data[i] = Math.random();
			//}
		}
	}
	public GrapherAlgo prototype() {
		return new RandomizeAlgo();
	}
	public String getName() {
		return "Add Noise";
	}
}

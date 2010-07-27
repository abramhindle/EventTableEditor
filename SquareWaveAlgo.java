package EventTableEditor;
class SquareWaveAlgo implements GrapherAlgo, DefaultStartEnd {
	public GrapherAlgo prototype() {
		return new SquareWaveAlgo();
	}
	public String getName() {
		return "SquareWave";
	}
	int dflstart = 0;
	int dflend = -1;
	public void dflend(int k) {
		dflend = k;
	}
	public void dflstart(int k) {
		dflstart = k;
	}
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		int length = data.length;
		double mod = g.getMax()-g.getMin();
		double min = g.getMin();
		int start = dflstart;
		int end = dflend;
		if (dflend == -1) {
			end = length;
		}
		int hlength = start+(end-start)/2;
		for (int i = start; i < hlength; i++) {
			data[i] = g.getMax();
		}
		for (int i = hlength; i < end; i++) {
			data[i] = g.getMin();
		}
	}
}

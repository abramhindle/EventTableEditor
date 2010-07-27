package EventTableEditor;

class SawtoothWaveAlgo implements GrapherAlgo, DefaultStartEnd {
	public GrapherAlgo prototype() {
		return new SawtoothWaveAlgo();
	}
	public String getName() {
		return "SawtoothWave";
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
		int hlength = end-start;
		if (dflend == -1) {
			end = length;
		}
		for (int i = start ; i < end; i++) {
			data[i] = mod*(i-start)/(double)(hlength)+min;
		}
	}
}

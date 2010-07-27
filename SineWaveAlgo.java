package EventTableEditor;
class SineWaveAlgo implements GrapherAlgo, DefaultStartEnd {
	public GrapherAlgo prototype() {
		return new SineWaveAlgo();
	}
	public String getName() {
		return "SineWave";
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
		for (int i = start ; i < end; i++) {
			data[i] = mod*(.5+Math.sin(2*Math.PI*1.0*(i-start)/(1.0*(end-start)))/2)+min;
		}
	}
}

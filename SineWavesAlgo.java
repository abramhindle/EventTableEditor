package EventTableEditor;
class SineWavesAlgo implements GrapherAlgo {
	SineWaveAlgo delegate = new SineWaveAlgo();
	SineWavesAlgo() {

	}
	public GrapherAlgo prototype() {
		return new SineWaveAlgo();
	}
	public String getName() {
		return "SineWaves";
	}
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		int length = data.length;
		int start = (int)(length*Math.random());
		int end = (int)(length*Math.random())+1;
		if (start > end) {
			int tmp = end;
			end = start;
			start = tmp;
		}
		delegate.dflstart(start);
		delegate.dflend(end);
		delegate.runAlgo(g);
	}
}

package EventTableEditor;
class DefaultStartEndWavesAlgo implements GrapherAlgo {
	DefaultStartEnd delegate = null;
	DefaultStartEndWavesAlgo(DefaultStartEnd delegate) {
		this.delegate = delegate;
	}
	public GrapherAlgo prototype() {
		return new DefaultStartEndWavesAlgo((DefaultStartEnd)delegate.prototype());
	}
	public String getName() {
		return delegate.getName()+"s";
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

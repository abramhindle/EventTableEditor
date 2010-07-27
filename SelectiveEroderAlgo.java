package EventTableEditor;


class SelectiveEroderAlgo implements GrapherAlgo {
	int max = 1;
	SelectiveEroderAlgo() {

	}
	SelectiveEroderAlgo(int m) {
		max = m;
	}
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		int size = (int)(1+(data.length/2)*Math.random());
		int index = (int)(data.length*Math.random());
		if (size+index >= data.length) {
			size = data.length-index-1;
		}
		for (int i = 0; i < size ; i++) {
			for (int k = 0 ; k < max; k++) {
				data[index+i] *= .9+.1*Math.random();
			}
		}
	}
	public GrapherAlgo prototype() {
		return new SelectiveEroderAlgo(max);
	}
	public String getName() {
		return "SelectiveEroder";
	}
}

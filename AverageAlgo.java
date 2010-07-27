package EventTableEditor;

class AverageAlgo implements GrapherAlgo {
	static int MINSIZE = 2;
	int size = MINSIZE;
	public GrapherAlgo prototype() {
		return new AverageAlgo();
	}
	public String getName() {
		return "Average";
	}
	public void runAlgo(Grapher g) {
		double [] data = g.getData();
		avg(data,size);
		size*=2;
		if (size > data.length) {
			size = MINSIZE;
		}
		avg(data,size);
	}
	void avg(double [] data, int size) {
		int s = size;
		int i = 0;
		for (i = 0; i < data.length ; i+=size) {
			if (i+size >= data.length) {
				s = data.length-i-1;
			} else {
				s = size;
			}
			if (s > 0) {
				double avg = 0;
				for (int k = 0; k < s; k++) {
					avg += data[i+k];
				}
				avg/=s;
				for (int k = 0; k < s; k++) {
					data[i+k] = avg;
				}
			}
		}
	}
}

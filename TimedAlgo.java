package EventTableEditor;
import java.util.*;
class TimedAlgo implements GrapherAlgo {
	GrapherAlgo [] algos;
	Map grapherToThread;
	String name;
	TimedAlgo(String name, GrapherAlgo [] algos) {
		init(name,algos);
	}
	protected void init(String name, GrapherAlgo []  algos) {
		this.name = name;
		this.algos = algos;
		grapherToThread = new HashMap();
	}
	protected TimedAlgo() {
		init(null,null);
	}
	Runner getRunner(Grapher g) {
		Runner run = new Runner(g);
		return run;
	}
	public void runAlgo(Grapher g) {
		Runner runner = (Runner)grapherToThread.get(g);
		if (runner == null) {
			System.err.println("Starting");
			Runner run = getRunner(g);
			Thread thread = new Thread(run);
			grapherToThread.put(g,run);
			thread.start();
		} else {
			System.err.println("Stopping");
			runner.quit();
			grapherToThread.put(g,null);
		}
	}
	public GrapherAlgo prototype() {
		GrapherAlgo [] algs = new GrapherAlgo[algos.length];
		for (int i = 0 ; i < algos.length ; i++) {
			algs[i] = algos[i].prototype();
		}
		return new TimedAlgo(name,algs);
	}
	public String getName() {
		return name;
	}
	class Runner implements Runnable {
		Grapher g;
		boolean quit = false;
		Runner(Grapher g) {
			this.g = g;
		}
		public void run() {
			try {
				while(!quit) {
					int i = 0;
					for (i = 0 ; i < algos.length-1; i++) {
						algos[i].runAlgo(g);
					}
					if (algos.length > 0) {
						g.runAlgo(algos[i]);
					}
					Thread.currentThread().sleep(100);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		public void quit() {
			quit = true;
		}
	}
}

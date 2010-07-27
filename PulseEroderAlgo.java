package EventTableEditor;
import java.util.*;
class PulseEroderAlgo implements GrapherAlgo {
	ErodeAlgo eroder;
	PulsesAlgo pulser;
	Map grapherToThread;
	PulseEroderAlgo() {
		eroder = new ErodeAlgo();
		pulser = new PulsesAlgo();
		grapherToThread = new HashMap();
	}
	public void runAlgo(Grapher g) {
		Runner runner = (Runner)grapherToThread.get(g);
		if (runner == null) {
			System.err.println("Starting");
			Runner run = new Runner(g);
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
		return new PulseEroderAlgo();
	}
	public String getName() {
		return "Stop/Start Pulser Eroder";
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
					g.runAlgo(eroder);
					g.runAlgo(pulser);
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

package EventTableEditor;
import java.util.*;
class CyclicTimeAlgo extends TimedAlgo {
	CyclicTimeAlgo(String name, Object [] algos) {
		List l = new ArrayList();
		int si = 1;
		for (int i = 0 ; i < algos.length ; i++) {
			if (algos[i] instanceof Integer) {
				si = ((Integer)algos[i]).intValue();
			}  else {
				for (int k = 0; k < si ; k++) {
					l.add(algos[i]);
				}
				si = 1;
			}
		}
		GrapherAlgo[] algo = new GrapherAlgo[l.size()];
		Iterator iter = l.iterator();
		int index=0;
		while (iter.hasNext()) {
			algo[index++] = (GrapherAlgo)iter.next();
		}
		init(name,algo);
	}
	CyclicTimeAlgo(String name,GrapherAlgo [] algos) {
		init(name,algos);
	}
	public GrapherAlgo prototype() {
		TimedAlgo algo = (TimedAlgo)super.prototype();
		return new CyclicTimeAlgo(algo.name,algo.algos);
	}
	Runner getRunner(Grapher g) {
		Runner run = new LinearRunner(g);
		return run;
	}
	class LinearRunner extends TimedAlgo.Runner {
		int index = 0;
		LinearRunner(Grapher g) {
			super(g);
		}
		public void run() {
			try {
				while(!quit) {
					g.runAlgo(algos[index]);
					index = (index+1)%algos.length;
					Thread.currentThread().sleep(100);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}

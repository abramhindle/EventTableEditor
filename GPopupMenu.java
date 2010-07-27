package EventTableEditor;
import javax.swing.*;

class GPopupMenu extends JPopupMenu {
	GPopupMenu() {
		super();
	}
	Grapher g;
	void setGrapher(Grapher g) {
		this.g = g;
	}
	void runAlgo(GrapherAlgo algo) {
		g.runAlgo(algo);
	}
}

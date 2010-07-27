package EventTableEditor;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;

class PopupFactory {
	private static  GPopupMenu popup;
	public  static GPopupMenu getPopup() {
		if (popup == null) {
			popup = new GPopupMenu();
			GrapherAlgo [] algos = GrapherAlgoFactory.getAlgorithms();
			for (int i = 0 ; i < algos.length ; i++ ) {
				final GrapherAlgo algo = algos[i];
				JMenuItem item = new JMenuItem(algo.getName());
				item.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						popup.runAlgo(algo);
					}
				});
				popup.add(item);
			}
		} 
		return popup;
	}
	public static synchronized void popup(MouseEvent e,Grapher g) {
		getPopup().setGrapher(g);
		getPopup().show(e.getComponent(), e.getX(), e.getY());
	}
}

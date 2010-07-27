package EventTableEditor;
import javax.swing.JOptionPane;
import javax.swing.JFrame;

public class Error {
	String message;
	public Error(String message) { this.message = message; }
	void go() {
		JOptionPane.showMessageDialog(new JFrame(), message,"Error", JOptionPane.ERROR_MESSAGE);
	}
}

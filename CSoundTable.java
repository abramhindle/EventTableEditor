package EventTableEditor;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.*;
//linear interpolation
public class CSoundTable extends JPanel implements ActionListener {
	Grapher graph = new Grapher();
	JButton zeroButton = new JButton("ZERO");
	JButton resetButton = new JButton("RE/SET");
	JTextField nameField = new JTextField();
	JTextField instrField = new JTextField();
	JTextField startField = new JTextField();
	JTextField endField = new JTextField();
	JTextField minField = new JTextField();
	JTextField maxField = new JTextField();
	JTextField tableNo  = new JTextField();
	Timer watcher = null;
	Printer printer = null;
	double [] data;
	public void setTable(int i) {
		tableNo.setText(i+"");
	}
	public int getTable() {
		try {
			return Integer.parseInt(tableNo.getText());
		} catch (Exception e) {
			return 0;
		}
	}
	public void setInstr(int i) {
		instrField.setText(i+"");
	}
	public void setName(String k) {
		nameField.setText(k);
	}
	public CSoundTable() {
		printer = PrinterFactory.getPrinter();
		zeroButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				graph.zeroData();
				graph.repaint();
			}
		});
		resetButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					double min = Double.parseDouble(minField.getText());
					double max = Double.parseDouble(maxField.getText());
					int start = Integer.parseInt(startField.getText());
					int end   = Integer.parseInt(endField.getText());
					graph.changeDataSize(min,max,start,end);
				} catch (NumberFormatException nfe) {
					Error err = new Error("Please use numerical values only!");
					err.go();
				}
			}
		});
		setName("");
		setInstr(6666);
		setTable(1);
		loadFields();
		setLayout(new BorderLayout());
		add(graph,BorderLayout.CENTER);
		JPanel controlPanel = new JPanel(new GridLayout(5,1));
		JPanel cpanel  = new JPanel(new GridLayout(1,1));
		JPanel cpanel1 = new JPanel(new GridLayout(1,2));
		JPanel cpanel2 = new JPanel(new GridLayout(1,2));
		JPanel cpanel3 = new JPanel(new GridLayout(1,2));
		JPanel cpanel4 = new JPanel(new GridLayout(1,2));
		cpanel.add(nameField);
		cpanel1.add(instrField);
		cpanel1.add(tableNo);
		cpanel2.add(minField);
		cpanel2.add(maxField);
		cpanel3.add(startField);
		cpanel3.add(endField);
		cpanel4.add(zeroButton);
		cpanel4.add(resetButton);
		controlPanel.add(cpanel);
		controlPanel.add(cpanel1);
		controlPanel.add(cpanel2);
		controlPanel.add(cpanel3);
		controlPanel.add(cpanel4);
		add(controlPanel,BorderLayout.EAST);
	}
	void loadGrapher(Grapher g) {
		remove(graph);
		graph = g;
		add(graph,BorderLayout.CENTER);
		graph.repaint();
		loadFields();
		updateUI();
	}
	public void start() {
		Timer watcher = new Timer(100, this);
		watcher.start();
	}
	public void end() {
		if (watcher!=null) {
			watcher.stop();
		}
	}
	public static void main(String [] arg) {
		JFrame mainFrame = new JFrame("Grapher");
		JPanel p = new JPanel(new GridLayout(4,1));
		for (int i = 0 ; i < 4; i++ ) {
			CSoundTable g = new CSoundTable();
			g.setTable(i+1);
			g.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
			p.add(g);
		}
                mainFrame.getContentPane().add(p);
                java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize(); 
		screenSize.setSize((int)(screenSize.getWidth()*.7),(int)(screenSize.getHeight()*.7));
                mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                mainFrame.setSize(screenSize);
                mainFrame.setVisible(true);
	}
	void loadFields() {
		minField.setText(graph.getMin()+"");
		maxField.setText(graph.getMax()+"");
		endField.setText(graph.getEnd()+"");
		startField.setText(graph.getStart()+"");
	}
	public void actionPerformed(ActionEvent e) {
		//int iMax = 100;
		if (!graph.changed()) {
			return;	
		}
		if (data == null || data.length != graph.getDataSize()) {
			data = new double[graph.getDataSize()];
			graph.loadData(data);
			printCSound(data,0,data.length-1);
		} else {
			int index = 0;
			int changes = 0;
			double [] da = graph.dataArray();
			while (index < data.length) {
				if (data[index]!=da[index]) {
					printCSound(da,index,index);
					changes++;
					index++;
				} else {
					index++;
				}
			}
			if (changes > 0) {
				graph.loadData(data);
			}
		}
		graph.setChanged(false);
	}
	public void printCSound(double [] data,int index, int max) {
		String base ="i"+instrField.getText()+" 0 0.001 " + tableNo.getText();
		for (int i = index; i <= max; i++) { //bug
			printer.print(base + " " + (i+graph.getStart()) + " "+data[i]);
		}
	}
	public StringBuffer getXMLOut() {
		StringBuffer buff = new StringBuffer();
		return getXMLOut(buff);
	}
	public StringBuffer getXMLOut(StringBuffer buff) {
		buff.append("<CSoundTable>");
		buff.append("<name>"+nameField.getText()+"</name>");
		buff.append("<instr>"+instrField.getText()+"</instr>");
		buff.append("<tableNo>"+tableNo.getText()+"</tableNo>");
		graph.getXMLOut(buff);
		buff.append("</CSoundTable>");
		return buff;
	}

}

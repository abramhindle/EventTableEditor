package EventTableEditor;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.border.*;
import java.io.*;
import java.util.*;
import org.xml.sax.*;
import org.xml.sax.helpers.*;

public class CSoundTableDriver implements ActionListener {
	JPanel panel = null;
	JPanel spanel = null;
	JPanel getPanel() {
		if (panel == null) {
			panel = new JPanel();
			panel.setLayout(new BoxLayout(panel,BoxLayout.Y_AXIS));
		}
		if (spanel == null) {
			spanel = new JPanel();
			spanel.setLayout(new BorderLayout());
			spanel.add(new JScrollPane(panel),BorderLayout.CENTER);
		}
		JPanel controlPanel = new JPanel();
		controlPanel.setLayout(new GridLayout(3,1));
		JButton addTableButton = new JButton("ADD");
		JButton saveButton = new JButton("SAVE");
		JButton loadButton = new JButton("LOAD");
		controlPanel.add(addTableButton);
		controlPanel.add(saveButton);
		controlPanel.add(loadButton);

		addTableButton.addActionListener(this);

		saveButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				File file = chooseFile();
				if (file==null) { return; }
				try {
					saveFile(file);
				} catch (IOException ioe) {
					Error err = new Error(ioe.getMessage());
					err.go();
				}
			}
		});
		loadButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				File file = chooseFile();
				if (file==null) { return; }
				loadFile(file);
			}
		});
		
		spanel.add(controlPanel,BorderLayout.EAST);

		CSoundTableDriver c = new CSoundTableDriver();
		addTable();
		return spanel;
	}
	File chooseFile() {
                JFileChooser chooser = new JFileChooser();
		int returnVal = chooser.showOpenDialog(null);
		if(returnVal != JFileChooser.APPROVE_OPTION) {
                        return null;
		} 
		File file = chooser.getSelectedFile();
		return file;
	}
	void saveFile(File file) throws IOException {
		PrintWriter writer = new PrintWriter(new FileOutputStream(file));
		writer.println(getXMLOut().toString());
		writer.close();
	}
	Vector parseFile(File file) throws IOException {
			try {
				CSoundTableParser c = new CSoundTableParser();
				XMLReader xr = XMLReaderFactory.createXMLReader();
                	        xr.setContentHandler( c );
                        	xr.parse(new InputSource(new FileReader(file)));
				return c.getTables();
			} catch (org.xml.sax.SAXException e) {
				throw new IOException(e.getMessage());
			}
	}
	void loadFile(File file) {
		try {
			Vector tables = parseFile(file);
			panel.removeAll();
			Iterator iter = tables.iterator();
			lastTable = 0;
			while (iter.hasNext()) {
				CSoundTable c = (CSoundTable)(iter.next());
				addTable(c);
			}
			panel.updateUI();
		} catch (IOException ioe) {
			Error err = new Error(ioe.getMessage());
			err.go();
		}
	}
	int lastTable = 0;
	void addTable() {
		CSoundTable table = new CSoundTable();
		addTable(table);

	}
	void addTable(CSoundTable table) {
		lastTable++;
		if (table.getTable() == 0) {
			table.setTable(lastTable);
		}
		table.setBorder(BorderFactory.createBevelBorder(BevelBorder.RAISED));
		panel.add(table);
		panel.updateUI();
		spanel.updateUI();
		table.end();
		table.start();
	}

	public static void main(String [] arg) {
		JFrame mainFrame = new JFrame("Abram's Table Editor");
		CSoundTableDriver c = new CSoundTableDriver();
                mainFrame.getContentPane().add(c.getPanel());
		//PrinterFactory.setPrinter(new STDOUTPrinter());
		if (arg.length > 0) {
			c.loadFile(new File(arg[0]));
		}
                java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize(); 
		screenSize.setSize((int)(screenSize.getWidth()*.7),(int)(screenSize.getHeight()*.7));
                mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                mainFrame.setSize(screenSize);
                mainFrame.setVisible(true);
	}
	public void actionPerformed(ActionEvent e) {
		addTable();
	}
	public StringBuffer getXMLOut() {
		StringBuffer buff = new StringBuffer();
		return getXMLOut(buff);
	}
	public StringBuffer getXMLOut(StringBuffer buff) {
		buff.append("<CSoundTables>");
		Component [] components = panel.getComponents();
		for (int i = 0 ; i < components.length; i++ ) {
			CSoundTable table = (CSoundTable)(components[i]);
			table.getXMLOut(buff);
		}
		buff.append("</CSoundTables>");
		return buff;
	}
}

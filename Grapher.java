package EventTableEditor;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.util.*;
//linear interpolation
public class Grapher extends JPanel implements MouseListener,MouseMotionListener {
        double min = -1;
        double max = 1;
        int start = 0;
        int end   = 128;
	boolean changed = false;
        private double [] data = null;
        Color bgColor = Color.WHITE;
        Color fgColor = Color.BLACK;
        Color divider = Color.BLUE; 
        Color hdivider = Color.RED; 
	boolean dragOn = false;
	boolean dragged = false;
	int lastX = 0;
	int lastY = 0;
	public Grapher() {
		_init();
		changeDataSize(min,max,start,end);
	}
	public Grapher(double min,double max) {
		_init();
		changeDataSize(min,max,start,end);
	}
	public Grapher(double min,double max,int start,int end) {
		_init();
		changeDataSize(min,max,start,end);
	}
	public Grapher(int start,int end) {
		_init();
		changeDataSize(min,max,start,end);
	}
	private void _init() {
		this.addMouseListener(this);
		this.addMouseMotionListener(this);
	}
	public void zeroData() {
		double v = 0.0;
		if (min > 0) {
			v = min;
		}
		for (int i = 0 ; i < data.length ; i++ ) {
			data[i] = v;
		}
		changed  = true;
	}
	public int numElements() {
		return 1+end-start;
	}
	private void newData() {
		data = new double[numElements()];
	}
	void setData(double [] d) {
		data = d;
	}
	void setData(Vector d) {
		Iterator iter = d.iterator();
		int index = 0;
		data = new double[d.size()];
		while (iter.hasNext()) {
			Double doub = (Double)(iter.next());
			data[index++] = doub.doubleValue();
		}
		changed = true;
		repaint();
	}
	double [] getData() { return data; }
	public void setStart(int start) {
		changeDataSize(min,max,start,end);
	}
	public void setEnd(int end) {
		changeDataSize(min,max,start,end);
	}
	public void setMin(double min) {
		changeDataSize(min,max,start,end);
	}
	public void setMax(double max) {
		changeDataSize(min,max,start,end);
	}
	public void setStartS(int start) {
		this.start =start;
	}
	public void setEndS(int end) {
		this.end = end;
	}
	public void setMinS(double min) {
		this.min = min;
	}
	public void setMaxS(double max) {
		this.max = max;
	}
	public double getMin() {return min  ;}
	public double getMax() {return max  ;}
	public int getStart() {return start;}
	public int getEnd() {return end  ;}
	public int getDataSize() { return data.length; }
	public boolean changed() { return changed; }
	public void setChanged(boolean k) { changed = k; }
	public void loadData(double [] k) {
		System.arraycopy(data, 0, k, 0, data.length);
	}
	public double []  dataArray() {
		return data;
	}
	public void changeDataSize(double min,double max,int start,int end) {
		this.min   = min  ;
		this.max   = max  ;
		this.start = start;
		this.end   = end  ;
		newData();
		zeroData();
		repaint();
	}
        protected void paintComponent(Graphics g) {
                Dimension d = getSize(); 
                int width =  (int)d.getWidth();
                int height = (int)d.getHeight();
                g.setColor(bgColor);
                g.fillRect(0,0,width,height);
                g.setColor(divider);
                for (int i = 0; i <= 4; i++) {
                        int x = i*width/4;
                        g.drawLine(x,0,x,height);
                }
                double vheight = max - min;
		if (min <= 0) {
			g.setColor(hdivider);
			int y = (int)(height*(0 - min)/(vheight));
			g.drawLine(0,(height-1)-y,width-1,(height-1)-y);
		}
                g.setColor(fgColor);
		double nextval = 0;
		double val  = 0;
		int dlength = data.length;
		for (int i = 0; i < (dlength-1); i++) { //fast for smaller tables
			double reli = i/(1.0*(dlength-1));
			double reli2 = (i+1)/(1.0*(dlength-1));
                        int y1 = height - (int)(height*((data[i]- min)/(vheight)));
                        int y2 = height - (int)(height*((data[i+1]- min)/(vheight)));
			g.drawLine((int)(reli*width),y1,(int)(reli2*width),y2);
		}
        }
	public void mouseClicked(MouseEvent e)  { // Invoked when the mouse button has been clicked (pressed and released) on a component.  
	}
	public void mouseEntered(MouseEvent e)  { // Invoked when the mouse enters a component.  
	}
	public void mouseExited(MouseEvent e)  { // Invoked when the mouse exits a component.  
	}
	public void mousePressed(MouseEvent e) { // Invoked when a mouse button has been pressed on a component.  
		if (e.getButton()!=e.BUTTON1) {
			maybeShowPopup(e);
			dragOn = false;
		} else {
			dragOn = true;
			lastX = e.getX();
			lastY = e.getY();
		}
	}
	public void mouseReleased(MouseEvent e) { // Invoked when a mouse button has been released on a component.
		if (e.getButton()!=e.BUTTON1) {
			maybeShowPopup(e);
		} else {
			int x = e.getX();
			int y = e.getY();
			dragOn = false;
			interpolate(x,y,lastX,lastY);
			dragged = false;
			repaint();
		}
	}
	private void interpolate(int x, int y, int lastX, int lastY) {
                Dimension d = getSize(); 
                int width =  (int)d.getWidth();
                int height = (int)d.getHeight();
		double reloldx = lastX/(width-1.0);
		double reloldy = 1 - lastY/(height-1.0);
		double relx = x/(width-1.0);
		double rely = 1 - y/(height-1.0);
		if (relx < reloldx) { //switch to max min
			double tmp = relx;
			relx = reloldx;
			reloldx = tmp;
			tmp = rely;
			rely = reloldy;
			reloldy = tmp;
		}
		//interpolate from lastX to currentX
		double rise = rely - reloldy;
		double run  = relx - reloldx;
		double slope = rise/run; //slope is relative
		int sindex = (int)(reloldx*(data.length));
		int eindex = (int)(relx*(data.length));
		int rrun = eindex - sindex;
		double rrise = (max - min)*rise;
		double rslope = rrise/rrun;
		if (sindex < 0) {
			sindex = 0;
		}
		if (eindex >= data.length) {
			eindex = data.length-1;
		}
		if (eindex == sindex) {

		}
		//interpolate
		int length = eindex - sindex;
		if (length >= 0) {
			length = 1;
		}
		//data[i+sindex] = reloldy + i/length*rrise;
		for (int i = 0; i <= (eindex-sindex); i++) { //bad?
			data[i+sindex] = rely*(max-min)+min;
		}
		changed = true;
	}
	public void mouseDragged(MouseEvent e) { // Invoked when a mouse button is pressed on a component and then dragged.
		if (!dragOn) {

		} else {
	                Dimension d = getSize(); 
        	        int width =  (int)d.getWidth();
                	int height = (int)d.getHeight();
			dragged  = true;
			dragOn = true;
			int x = e.getX();
			int y = e.getY();
			interpolate(x,y,lastX,lastY);
			lastX = x;
			lastY = y;
			repaint();
		}
	}
	public void mouseMoved(MouseEvent e)  { // Invoked when the mouse button has been moved on a component (with no buttons down).
	}
	public static void main(String [] arg) {
		JFrame mainFrame = new JFrame("Grapher");
		Grapher g = new Grapher();
                mainFrame.getContentPane().add(g);
                java.awt.Dimension screenSize = java.awt.Toolkit.getDefaultToolkit().getScreenSize(); 
		screenSize.setSize((int)(screenSize.getWidth()*.7),(int)(screenSize.getHeight()*.7));
                mainFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
                mainFrame.setSize(screenSize);
                mainFrame.setVisible(true);
	}
	public StringBuffer getXMLOut() {
		StringBuffer buff = new StringBuffer();
		return getXMLOut(buff);
	}
	public StringBuffer getXMLOut(StringBuffer buff) {
		buff.append("<Grapher>");
		buff.append("<min>"+min+"</min>");
		buff.append("<max>"+max+"</max>");
		buff.append("<start>"+start+"</start>");
		buff.append("<end>"+end+"</end>");
		buff.append("<data>");
		for (int i = 0; i < data.length; i++) {
			buff.append("<d>"+data[i]+"</d>");
		}
		buff.append("</data>");
		buff.append("</Grapher>");
		return buff;
	}
	private void maybeShowPopup(MouseEvent e) {
		if (e.isPopupTrigger()) {
			PopupFactory.popup(e,this);
		}
	}
	public void runAlgo(GrapherAlgo g) {
		g.runAlgo(this);
		repaint();
		setChanged(true);
	}

}

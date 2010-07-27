package EventTableEditor;
public class PrinterFactory {
	static protected Printer p = new STDOUTPrinter();
	public static void setPrinter(Printer pr) {
		p = pr;
	}
	public static Printer getPrinter() {
		return p;
	}
	
}

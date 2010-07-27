package EventTableEditor;
import org.xml.sax.*;
import org.xml.sax.helpers.*;
import java.io.*;
import java.util.*;

public class CSoundTableParser extends DefaultHandler {
	protected CharArrayWriter contents = new CharArrayWriter();
	Vector tables = new Vector();
	CSoundTable table = null;
	Grapher graph = null;
	Vector data = null;
	public void characters( char[] ch, int start, int length ) throws SAXException {
		contents.write( ch, start, length );
	}
	public void startElement( String namespaceURI, String localName, String qName, Attributes attr ) throws SAXException {
		contents.reset();
		if (localName.equals("Grapher")) {
			graph = new Grapher();
		} else if (localName.equals("data")) {
			data = new Vector();
		} else if (localName.equals("CSoundTable")) {
			table = new CSoundTable();
		}
	}

	public void endElement( String namespaceURI, String localName, String qName ) throws SAXException{
		super.endElement(namespaceURI,localName,qName);
		String value = contents.toString().trim();
		if ( localName.equals( "min" ) ) {
			graph.setMinS(parseDouble(value));
		} else if (localName.equals( "max" ) ) {
			graph.setMaxS(parseDouble(value));
		} else if ( localName.equals("start")) {
			graph.setStartS(parseInt(value));
		} else if ( localName.equals("end")) {
			graph.setEndS(parseInt(value));
		} else if ( localName.equals("data")) {
			graph.setData(data);
			data = null;
		} else if ( localName.equals("instr")) {
			table.setInstr(parseInt(value));
		} else if ( localName.equals("name")) {
			table.setName(value);
		} else if ( localName.equals("tableNo")) {
			table.setTable(parseInt(value));
		} else if ( localName.equals("d")) {
			data.add(new Double(parseDouble(value)));
		} else if (localName.equals("Grapher")) {
			table.loadGrapher(graph);
		} else if (localName.equals("CSoundTable")) {
			tables.add(table);
		}
	}
	public Vector getTables() {
		return tables;
	}
	int parseInt(String value) {
		try {
			return Integer.parseInt(value);
		} catch (NumberFormatException e) {
			return 0;
		}
	}
	double parseDouble(String value) {
		try {
			return Double.parseDouble(value);
		} catch (NumberFormatException e) {
			return 0.0;
		}
	}
}

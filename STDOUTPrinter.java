package EventTableEditor;

import java.util.*;
import java.io.*;

public class STDOUTPrinter implements Printer, Runnable {
	Semaphore semaphore = new Semaphore();
	Thread thread;
	Object o = new Object();
	public STDOUTPrinter() {
		//thread = new Thread(this);
		//thread.start();
	}
	public synchronized void print(String str) {
		//addString(str);
		//semaphore.release();
		System.out.println(str);
	}
	LinkedList buffer = new LinkedList();
	synchronized String getNextString() {
		if (buffer.isEmpty()) { return null; }
		return (String)buffer.removeFirst();
	}
	synchronized void addString(String str) {
		buffer.add(str);
	}
	public void run() {
		for(;;) {
			try {
				//semaphore.acquire();
				thread.sleep(1);
				//System.out.write((getNextString()+"\n").getBytes());
				String str = getNextString();
				if (str!=null) {
					System.out.println(str);
				}
				//System.out.flush();
			//} catch (IOException e) {
			//	e.printStackTrace(System.err);
			} catch (InterruptedException e) {

			}
		}
	}
}

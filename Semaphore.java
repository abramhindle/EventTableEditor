/**
 *	Abram Hindle 0020755 CSC450 2002
 * */
/**
 * This Semaphore was taken and modified from:
 * http://www.javaworld.com/javaworld/javaqa/1999-11/02-qa-semaphore.html
 * It is not a half semaphore and is only used to provide blocking.
 * */
package EventTableEditor;

public class Semaphore {
	/**
	 * The semaphore counter
	 * */
	private int counter;
	/**
	 * Default Constructor
	 * */
	public Semaphore() {
		this(0);
	}
	/**
	 * Arguement Constructor set the counter with i
	 * @param i is a non-negative integer
	 * */
	public Semaphore(int i) {
		if (i < 0) throw new IllegalArgumentException(i + " < 0");
		counter = i;
	}
	/**
	 * Increments internal counter, possibly awakening a thread
	 * wait()ing in acquire().
	 */
	public synchronized void release() {
		if (counter == 0) {
			//this.notify();
			this.notifyAll();
		}
		counter++;
	}
	/**
	 * Simply just waits k milliseconds
	 * @exception InterruptedException passed from this.wait().
	 * */
	public synchronized void justWait(int k) throws InterruptedException {
		this.wait(k);
		counter--;
	}
	/**
	 * Decrements internal counter, blocking if the counter is already
	 * zero.
	 * @exception InterruptedException passed from this.wait().
	 */
	public synchronized void acquire() throws InterruptedException {
		while (counter == 0) {
			this.wait();
		}
		counter--;
	}
}

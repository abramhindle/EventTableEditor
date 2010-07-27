package EventTableEditor;
interface GrapherAlgo {
	public void runAlgo(Grapher g);
	public GrapherAlgo prototype(); //Exactly like clone
	public String getName();
}

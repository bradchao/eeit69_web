package tw.brad.apis;

public class Brad19M {
	private int x, y;
	public Brad19M(String x, String y) throws Exception {
		this.x = Integer.parseInt(x);
		this.y = Integer.parseInt(y);
	}
	
	public int plus() {
		return x + y;
	}
}

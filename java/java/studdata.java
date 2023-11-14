package java;
public class studdata {
	private String name;
	private int id;
	private int yearstudy;
	public studdata (String name, int id) {
		this.name = name;
		this.id = id;
		this.yearstudy = 1;
	}
	public String getname() {
		return name;
	}
	public int getid() {
		return id;
	}
	public int getyear() {
		return yearstudy;
	}
	public void increment() {
		yearstudy++;
	}
}
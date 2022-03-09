package kr.co.test;

public class MemDTO {

	private String name;
	private String id;
	private String pw;
	
	//기본생성자
	public MemDTO() {}
	
	public MemDTO(String name, String id, String pw) {
		this.name=name;
		this.id=id;
		this.pw=pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return "MemDTO [name=" + name + ", id=" + id + ", pw=" + pw + "]";
	}
	

}

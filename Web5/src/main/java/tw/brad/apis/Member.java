package tw.brad.apis;

public class Member {
	private int id;
	private String account, realname, birthday;
	
	public Member() {}
	public Member(int id, String account, 
			String realname, String birthday) {
		this.id = id;
		this.account = account;
		this.realname = realname;
		this.birthday = birthday;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	
	
}

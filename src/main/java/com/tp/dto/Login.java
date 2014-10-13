package com.tp.dto;

public class Login {

	private long id;
	private String userName;
	private String password;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "Login [id=" + id + ", "
				+ (userName != null ? "userName=" + userName + ", " : "")
				+ (password != null ? "password=" + password : "") + "]";
	}

}

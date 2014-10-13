package com.tp.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user", catalog = "tp")
public class User implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "id", nullable = false, unique = true)
	@GeneratedValue
	private int id;

	@Id
	@Column(name = "userName", nullable = false, unique = true)
	private String userName;

	@Column(name = "password")
	private String password;

	@Column(name = "role")
	private int role;

	@Column(name = "email")
	private String email;

	@Column(name = "dob")
	private String dob;

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public User() {
	}

	public User(String userName, String password, int role, String email,
			String dob) {
		this.userName = userName;
		this.password = password;
		this.role = role;
		this.email = email;
		this.dob = dob;
	}

}
package com.untitoonvl.domain;

import java.sql.Date;

public class UserVo {
	private String user_id;
	private String user_pw;
	private String user_nick;
	private String user_name;
	private String user_email;
	private Date user_birth;
	private String user_gender;
	private Date reg_date;
	private int charge_money;
	private int free_money;
	private int point;
	private int user_level;
	private String deleted;

	public UserVo(String user_id, String user_pw, String user_nick, String user_name, String user_email,
			Date user_birth, String user_gender, Date reg_date, int charge_money, int free_money, int point,
			int user_level, String deleted) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_nick = user_nick;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_birth = user_birth;
		this.user_gender = user_gender;
		this.reg_date = reg_date;
		this.charge_money = charge_money;
		this.free_money = free_money;
		this.point = point;
		this.user_level = user_level;
		this.deleted = deleted;
	}

	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_nick() {
		return user_nick;
	}

	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public Date getUser_birth() {
		return user_birth;
	}

	public void setUser_birth(Date user_birth) {
		this.user_birth = user_birth;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public int getCharge_money() {
		return charge_money;
	}

	public void setCharge_money(int charge_money) {
		this.charge_money = charge_money;
	}

	public int getFree_money() {
		return free_money;
	}

	public void setFree_money(int free_money) {
		this.free_money = free_money;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public int getUser_level() {
		return user_level;
	}

	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	@Override
	public String toString() {
		return "UserVo [user_id=" + user_id + ", user_pw=" + user_pw + ", user_nick=" + user_nick + ", user_name="
				+ user_name + ", user_email=" + user_email + ", user_birth=" + user_birth + ", user_gender="
				+ user_gender + ", reg_date=" + reg_date + ", charge_money=" + charge_money + ", free_money="
				+ free_money + ", point=" + point + ", user_level=" + user_level + ", deleted=" + deleted + "]";
	}

}

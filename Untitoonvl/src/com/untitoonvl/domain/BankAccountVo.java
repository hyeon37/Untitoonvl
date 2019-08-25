package com.untitoonvl.domain;

public class BankAccountVo {
	private int bank_number;
	private String user_id;
	private String bank_name;
	private String account_num;

	public BankAccountVo() {
		super();
	}

	public BankAccountVo(int bank_number, String user_id, String bank_name, String account_num) {
		super();
		this.bank_number = bank_number;
		this.user_id = user_id;
		this.bank_name = bank_name;
		this.account_num = account_num;
	}

	public int getBank_number() {
		return bank_number;
	}

	public void setBank_number(int bank_number) {
		this.bank_number = bank_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBank_name() {
		return bank_name;
	}

	public void setBank_name(String bank_name) {
		this.bank_name = bank_name;
	}

	public String getAccount_num() {
		return account_num;
	}

	public void setAccount_num(String account_num) {
		this.account_num = account_num;
	}

	@Override
	public String toString() {
		return "BankAccountVo [bank_number=" + bank_number + ", user_id=" + user_id + ", bank_name=" + bank_name
				+ ", account_num=" + account_num + "]";
	}

}

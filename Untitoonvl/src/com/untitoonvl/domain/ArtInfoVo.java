package com.untitoonvl.domain;

import java.sql.Date;
import java.util.Arrays;

public class ArtInfoVo {
	private int art_number;
	private int episode;
	private String episode_subject;
	private String thumnail_path;
	private int view_count;
	private int heart_count;
	private String notice;
	private Date update_date;
	private int price;
	private int charge_pay;
	private int free_pay;
	private String completed;
	private String opened;
	
	private String[] files;

	public ArtInfoVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getArt_number() {
		return art_number;
	}

	public void setArt_number(int art_number) {
		this.art_number = art_number;
	}

	public int getEpisode() {
		return episode;
	}

	public void setEpisode(int episode) {
		this.episode = episode;
	}

	public String getEpisode_subject() {
		return episode_subject;
	}

	public void setEpisode_subject(String episode_subject) {
		this.episode_subject = episode_subject;
	}

	public String getThumnail_path() {
		return thumnail_path;
	}

	public void setThumnail_path(String thumnail_path) {
		this.thumnail_path = thumnail_path;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	public int getHeart_count() {
		return heart_count;
	}

	public void setHeart_count(int heart_count) {
		this.heart_count = heart_count;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	public Date getUpdate_date() {
		return update_date;
	}

	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCharge_pay() {
		return charge_pay;
	}

	public void setCharge_pay(int charge_pay) {
		this.charge_pay = charge_pay;
	}

	public int getFree_pay() {
		return free_pay;
	}

	public void setFree_pay(int free_pay) {
		this.free_pay = free_pay;
	}

	public String getCompleted() {
		return completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	public String getOpened() {
		return opened;
	}

	public void setOpened(String opened) {
		this.opened = opened;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "ArtInfoVo [art_number=" + art_number + ", episode=" + episode + ", episode_subject=" + episode_subject
				+ ", thumnail_path=" + thumnail_path + ", view_count=" + view_count + ", heart_count=" + heart_count
				+ ", notice=" + notice + ", update_date=" + update_date + ", price=" + price + ", charge_pay="
				+ charge_pay + ", free_pay=" + free_pay + ", completed=" + completed + ", opened=" + opened + ", files="
				+ Arrays.toString(files) + "]";
	}

}

package com.untitoonvl.domain;

import java.sql.Date;

public class ArtCateVo {
	private int art_number;
	private String art_type;
	private String art_genre;
	private String user_id;
	private int team_number;
	private String art_name;
	private String art_thumnail;
	private String art_pr;
	private int art_count;
	private Date reg_art;
	private int liked_count;
	private int good_count;
	private int update_cycle;
	private String update_cycle_dm;
	private String update_rest;
	private Date last_update_day;
	private Date next_update_day;
	private String update_alert;
	private String adult;
	private String completed;
	private String deleted;

	public ArtCateVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getArt_number() {
		return art_number;
	}

	public void setArt_number(int art_number) {
		this.art_number = art_number;
	}

	public String getArt_type() {
		return art_type;
	}

	public void setArt_type(String art_type) {
		this.art_type = art_type;
	}

	public String getArt_genre() {
		return art_genre;
	}

	public void setArt_genre(String art_genre) {
		this.art_genre = art_genre;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getTeam_number() {
		return team_number;
	}

	public void setTeam_number(int team_number) {
		this.team_number = team_number;
	}

	public String getArt_name() {
		return art_name;
	}

	public void setArt_name(String art_name) {
		this.art_name = art_name;
	}

	public String getArt_thumnail() {
		return art_thumnail;
	}

	public void setArt_thumnail(String art_thumnail) {
		this.art_thumnail = art_thumnail;
	}

	public String getArt_pr() {
		return art_pr;
	}

	public void setArt_pr(String art_pr) {
		this.art_pr = art_pr;
	}

	public int getArt_count() {
		return art_count;
	}

	public void setArt_count(int art_count) {
		this.art_count = art_count;
	}

	public Date getReg_art() {
		return reg_art;
	}

	public void setReg_art(Date reg_art) {
		this.reg_art = reg_art;
	}

	public int getLiked_count() {
		return liked_count;
	}

	public void setLiked_count(int liked_count) {
		this.liked_count = liked_count;
	}

	public int getGood_count() {
		return good_count;
	}

	public void setGood_count(int good_count) {
		this.good_count = good_count;
	}

	public int getUpdate_cycle() {
		return update_cycle;
	}

	public void setUpdate_cycle(int update_cycle) {
		this.update_cycle = update_cycle;
	}

	public String getUpdate_cycle_dm() {
		return update_cycle_dm;
	}

	public void setUpdate_cycle_dm(String update_cycle_dm) {
		this.update_cycle_dm = update_cycle_dm;
	}

	public String getUpdate_rest() {
		return update_rest;
	}

	public void setUpdate_rest(String update_rest) {
		this.update_rest = update_rest;
	}

	public Date getLast_update_day() {
		return last_update_day;
	}

	public void setLast_update_day(Date last_update_day) {
		this.last_update_day = last_update_day;
	}

	public Date getNext_update_day() {
		return next_update_day;
	}

	public void setNext_update_day(Date next_update_day) {
		this.next_update_day = next_update_day;
	}

	public String getUpdate_alert() {
		return update_alert;
	}

	public void setUpdate_alert(String update_alert) {
		this.update_alert = update_alert;
	}

	public String getAdult() {
		return adult;
	}

	public void setAdult(String adult) {
		this.adult = adult;
	}

	public String getCompleted() {
		return completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	public String getDeleted() {
		return deleted;
	}

	public void setDeleted(String deleted) {
		this.deleted = deleted;
	}

	@Override
	public String toString() {
		return "ArtCateVo [art_number=" + art_number + ", art_type=" + art_type + ", art_genre=" + art_genre
				+ ", user_id=" + user_id + ", team_number=" + team_number + ", art_name=" + art_name + ", art_thumnail="
				+ art_thumnail + ", art_pr=" + art_pr + ", art_count=" + art_count + ", reg_art=" + reg_art
				+ ", liked_count=" + liked_count + ", good_count=" + good_count + ", update_cycle=" + update_cycle
				+ ", update_cycle_dm=" + update_cycle_dm + ", update_rest=" + update_rest + ", last_update_day="
				+ last_update_day + ", next_update_day=" + next_update_day + ", update_alert=" + update_alert
				+ ", adult=" + adult + ", completed=" + completed + ", deleted=" + deleted + "]";
	}

}

package com.untitoonvl.domain;

public class AuthorTeamVo {
	private int team_number;
	private String art_team;
	private String user_id1;
	private String user_id2;
	private String user_id3;
	private String user_id4;
	private String user_id5;

	public AuthorTeamVo() {
		super();
	}

	public int getTeam_number() {
		return team_number;
	}

	public void setTeam_number(int team_number) {
		this.team_number = team_number;
	}

	public String getArt_team() {
		return art_team;
	}

	public void setArt_team(String art_team) {
		this.art_team = art_team;
	}

	public String getUser_id1() {
		return user_id1;
	}

	public void setUser_id1(String user_id1) {
		this.user_id1 = user_id1;
	}

	public String getUser_id2() {
		return user_id2;
	}

	public void setUser_id2(String user_id2) {
		this.user_id2 = user_id2;
	}

	public String getUser_id3() {
		return user_id3;
	}

	public void setUser_id3(String user_id3) {
		this.user_id3 = user_id3;
	}

	public String getUser_id4() {
		return user_id4;
	}

	public void setUser_id4(String user_id4) {
		this.user_id4 = user_id4;
	}

	public String getUser_id5() {
		return user_id5;
	}

	public void setUser_id5(String user_id5) {
		this.user_id5 = user_id5;
	}

	@Override
	public String toString() {
		return "AuthorTeamVo [team_number=" + team_number + ", art_team=" + art_team + ", user_id1=" + user_id1
				+ ", user_id2=" + user_id2 + ", user_id3=" + user_id3 + ", user_id4=" + user_id4 + ", user_id5="
				+ user_id5 + "]";
	}

}
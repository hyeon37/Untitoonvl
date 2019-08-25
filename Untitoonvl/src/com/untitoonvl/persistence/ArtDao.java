package com.untitoonvl.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.untitoonvl.domain.ArtCateVo;
import com.untitoonvl.domain.ArtInfoVo;
import com.untitoonvl.domain.UserVo;

public class ArtDao {
	
	public static ArtDao instance;
	
	private ArtDao() {	}
	
	public static ArtDao getInstance() {
		if (instance == null) {
			instance = new ArtDao();
		}
		return instance;
	}
	
	private Connection getConnection() {
		try {
			// javax.naming.Context
			Context ctx = new InitialContext();
			// context.xml에 지정된 커넥션풀(DataSource) 얻기
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			Connection conn = ds.getConnection();
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return null;
	}
	
	private void closeAll(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		
		if (conn != null) {	try { conn.close();	} catch (Exception e) {	} }
		if (pstmt != null) { try { pstmt.close(); } catch (Exception e) { } }
		if (rs != null) { try { rs.close(); } catch (Exception e) {	} }
	}
	
	/**
	 * 내 작품 등록하기
	 * @param artCateVo
	 * @return
	 */
	public boolean registerArtCate(ArtCateVo artCateVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "insert into art_cate (art_number, art_type, art_genre,"
					+ "   user_id, team_number, art_name, art_thumnail, art_pr,"
					+ "   update_cycle, update_cycle_dm, update_alert, adult)"
					+ "   values (seq_art.nextval,?,?,?,?, ?,?,?,?,?, ?,?)";
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			pstmt.setString(++i, artCateVo.getArt_type());
			pstmt.setString(++i, artCateVo.getArt_genre());
			pstmt.setString(++i, artCateVo.getUser_id());
			pstmt.setInt(++i, artCateVo.getTeam_number());
			pstmt.setString(++i, artCateVo.getArt_name());
			pstmt.setString(++i, artCateVo.getArt_thumnail());
			pstmt.setString(++i, artCateVo.getArt_pr());
			pstmt.setInt(++i, artCateVo.getUpdate_cycle());
			pstmt.setString(++i, artCateVo.getUpdate_cycle_dm());
			pstmt.setString(++i, artCateVo.getUpdate_alert());
			pstmt.setString(++i, artCateVo.getAdult());
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		
		return false;
	}
	
	/**
	 * 내 작품 정보 수정
	 * @param artCateVo
	 * @return
	 */
	public boolean updateArtCate(ArtCateVo artCateVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "update art_cate set art_genre = ?, art_thumnail = ?, art_pr = ?,"
					+ "   update_cycle = ?, update_cycle_dm = ?, update_alert = ?"
					+ "   where art_number = ?";
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			pstmt.setString(++i, artCateVo.getArt_genre());
			pstmt.setString(++i, artCateVo.getArt_thumnail());
			pstmt.setString(++i, artCateVo.getArt_pr());
			pstmt.setInt(++i, artCateVo.getUpdate_cycle());
			pstmt.setString(++i, artCateVo.getUpdate_cycle_dm());
			pstmt.setString(++i, artCateVo.getUpdate_alert());
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		
		return false;
	}
	
	/**
	 * 내 작품 삭제
	 * @param artCateVo
	 * @return
	 */
	public boolean deleteArtCate(ArtCateVo artCateVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "update art_cate set deleted = 'O'"
					+ "   where art_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, artCateVo.getArt_number());
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		
		return false;
	}
	
	/**
	 * 선택한 작품 정보 불러오기
	 * @param userVo
	 * @return
	 */
	public ArtCateVo getArtCate(ArtCateVo artCateVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select * from art_cate where art_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, artCateVo.getArt_number());
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int art_number = rs.getInt("art_number");
				String art_type = rs.getString("art_type");
				String art_genre = rs.getString("art_genre");
				String user_id = rs.getString("user_id");
				int team_number = rs.getInt("team_number");
				String art_name = rs.getString("art_name");
				String art_thumnail = rs.getString("art_thumnail");
				String art_pr = rs.getString("art_pr");
				int art_count = rs.getInt("art_count");
				Date reg_art = rs.getDate("reg_art");
				int liked_count = rs.getInt("liked_count");
				int good_count = rs.getInt("good_count");
				int update_cycle = rs.getInt("update_cycle");
				String update_cycle_dm = rs.getString("update_cycle_dm");
				String update_rest = rs.getString("update_rest");
				Date last_update_day = rs.getDate("last_update_day");
				Date next_update_day = rs.getDate("next_update_day");
				String update_alert = rs.getString("update_alert");
				String adult = rs.getString("adult");
				String completed = rs.getString("completed");
				String deleted = rs.getString("deleted");
				
				ArtCateVo vo = new ArtCateVo();
				
				vo.setArt_number(art_number);
				vo.setArt_type(art_type);
				vo.setArt_genre(art_genre);
				vo.setUser_id(user_id);
				vo.setTeam_number(team_number);
				vo.setArt_name(art_name);
				vo.setArt_thumnail(art_thumnail);
				vo.setArt_pr(art_pr);
				vo.setArt_count(art_count);
				vo.setReg_art(reg_art);
				vo.setLiked_count(liked_count);
				vo.setGood_count(good_count);
				vo.setUpdate_cycle(update_cycle);
				vo.setUpdate_cycle_dm(update_cycle_dm);
				vo.setUpdate_rest(update_rest);
				vo.setLast_update_day(last_update_day);
				vo.setNext_update_day(next_update_day);
				vo.setUpdate_alert(update_alert);
				vo.setAdult(adult);
				vo.setCompleted(completed);
				vo.setDeleted(deleted);
				
				return vo;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		return null;
	}
	
	/**
	 * 내 작품 정보 불러오기
	 * @param userVo
	 * @return
	 */
	public ArrayList<ArtCateVo> getMyArtCate(UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select * from art_cate where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userVo.getUser_id());
			rs = pstmt.executeQuery();
			
			return getArtCateVo(rs);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		return null;
	}
	
	/**
	 * 검색한 작품 정보 불러오기
	 * @param userVo
	 * @return
	 */
	public ArrayList<ArtCateVo> getSearchArtCate(String searchVal) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select * from art_cate where art_name = ? or"
					+ "   team_number = (select team_number from author_team where art_team = ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchVal);
			pstmt.setString(2, searchVal);
			rs = pstmt.executeQuery();
			
			return getArtCateVo(rs);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		return null;
	}
	
	/**
	 * 선택한 작품 목록 불러오기
	 * @param artCateVo
	 * @return
	 */
	public ArrayList<ArtInfoVo> getArtInfoList(ArtCateVo artCateVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select * from art_info where art_number = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, artCateVo.getArt_number());
			rs = pstmt.executeQuery();
			
			ArrayList<ArtInfoVo> artInfoList = new ArrayList<>();
			while (rs.next()) {
				int art_number = rs.getInt("art_number");
				int episode = rs.getInt("episode");
				String episode_subject = rs.getString("episode_subject");
				String thumnail_path = rs.getString("thumnail_path");
				int view_count = rs.getInt("view_count");
				int heart_count = rs.getInt("heart_count");
				String notice = rs.getString("notice");
				Date update_date = rs.getDate("update_date");
				int price = rs.getInt("price");
				int charge_pay = rs.getInt("charge_pay");
				int free_pay = rs.getInt("free_pay");
				String completed = rs.getString("completed");
				String opened = rs.getString("opened");
				
				ArtInfoVo artInfoVo = new ArtInfoVo();
				
				artInfoVo.setArt_number(art_number);
				artInfoVo.setEpisode(episode);
				artInfoVo.setEpisode_subject(episode_subject);
				artInfoVo.setThumnail_path(thumnail_path);
				artInfoVo.setView_count(view_count);
				artInfoVo.setHeart_count(heart_count);
				artInfoVo.setNotice(notice);
				artInfoVo.setUpdate_date(update_date);
				artInfoVo.setPrice(price);
				artInfoVo.setCharge_pay(charge_pay);
				artInfoVo.setFree_pay(free_pay);
				artInfoVo.setCompleted(completed);
				artInfoVo.setOpened(opened);
				
				artInfoList.add(artInfoVo);
			}
			return artInfoList;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		
		return null;
	}
	
	
	/**
	 * 등록한 작품 업로드
	 * @param artInfoVo
	 * @return
	 */
	public boolean uploadEpisode(ArtInfoVo artInfoVo, UserVo userVo, Date date) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		PreparedStatement pstmt4 = null;
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			
			String sql1 = "insert into art_info"
					+ "   (art_number, episode, episode_subject, thumnail_path,"
					+ "   notice, price, completed, opened)"
					+ "   values(?,seq_episode.nextval,?,?,?, ?,?,?)";
			pstmt1 = conn.prepareStatement(sql1);
			int i = 0;
			pstmt1.setInt(++i, artInfoVo.getArt_number());
			pstmt1.setString(++i, artInfoVo.getEpisode_subject());
			pstmt1.setString(++i, artInfoVo.getThumnail_path());
			pstmt1.setString(++i, artInfoVo.getNotice());
			pstmt1.setInt(++i, artInfoVo.getPrice());
			pstmt1.setString(++i, artInfoVo.getCompleted());
			pstmt1.setString(++i, artInfoVo.getOpened());
			pstmt1.executeUpdate();
			
			for (int j = 0; j < artInfoVo.getFiles().length; j++) {
				String sql2 = "insert into art_files"
						+ "   (episode, file_path)"
						+ "   values (seq_episode.currval,?)";
				pstmt2 = conn.prepareStatement(sql2);
				pstmt2.setString(1, artInfoVo.getFiles()[j]);
				pstmt2.executeUpdate();
			}
			
			String sql3 = "update art_cate set art_count = art_count + 1, last_update_day = sysdate,"
					+ "    next_update_day = ? where art_number = ?";
			pstmt3 = conn.prepareStatement(sql3);
			pstmt3.setInt(1, artInfoVo.getArt_number());
			pstmt3.setDate(2, date);
			pstmt3.executeUpdate();
			
			String sql4 = "insert into user_active_log (user_id, active_index, active_date)"
					+ "    values (?,?,sysdate)";
			pstmt4 = conn.prepareStatement(sql4);
			pstmt4.setString(1, userVo.getUser_id());
			pstmt4.setInt(2, 65);
			pstmt4.executeUpdate();
			
			conn.commit();
			
			return true;
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			closeAll(null, pstmt1, null);
			closeAll(null, pstmt2, null);
			closeAll(null, pstmt3, null);
			closeAll(conn, pstmt4, null);
		}
		
		return false;
	}
	
	/**
	 * 업로드된 작품 보기(작가)
	 * @param artInfoVo
	 * @return
	 */
	public ArtInfoVo getEpisode(ArtInfoVo artInfoVo) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		ResultSet rs1 = null;
		ResultSet rs2 = null;
		ArtInfoVo vo = new ArtInfoVo();
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);

			String sql1 = "select * from art_info where episode = ?";
			pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setInt(1, artInfoVo.getEpisode());
			rs1 = pstmt1.executeQuery();
			if (rs1.next()) {
				int art_number = rs1.getInt("art_number");
				int episode = rs1.getInt("episode");
				String episode_subject = rs1.getString("episode_subject");
				String thumnail_path = rs1.getString("thumnail_path");
				int view_count = rs1.getInt("view_count");
				int heart_count = rs1.getInt("heart_count");
				String notice = rs1.getString("notice");
				Date update_date = rs1.getDate("update_date");
				int price = rs1.getInt("price");
				int charge_pay = rs1.getInt("charge_pay");
				int free_pay = rs1.getInt("free_pay");
				String completed = rs1.getString("completed");
				String opened = rs1.getString("deleted");
				

				vo.setArt_number(art_number);
				vo.setEpisode(episode);
				vo.setEpisode_subject(episode_subject);
				vo.setThumnail_path(thumnail_path);
				vo.setView_count(view_count);
				vo.setHeart_count(heart_count);
				vo.setNotice(notice);
				vo.setUpdate_date(update_date);
				vo.setPrice(price);
				vo.setCharge_pay(charge_pay);
				vo.setFree_pay(free_pay);
				vo.setCompleted(completed);
				vo.setOpened(opened);
			}
			
			String sql2 = "select file_path from art_files where episode = ?";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setInt(1, artInfoVo.getEpisode());
			rs2 = pstmt2.executeQuery();
			
			ArrayList<String> list = null;
			
			while (rs2.next()) {
				String file_path = rs2.getString("file_path");
				list.add(file_path);
			}
			
			String[] files = new String[list.size()];
			for (int i = 0; i < list.size(); i++) {
				files[i] = list.get(i);
			}
			
			vo.setFiles(files);
			
			conn.commit();
			return vo;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(null, pstmt1, rs1);
			closeAll(conn, pstmt2, rs2);
		}
		
		return null;
	}
	
	/**
	 * 업로드된 작품 수정
	 * @param artInfoVo
	 * @return
	 */
	public boolean updateEpisode(ArtInfoVo artInfoVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "update art_info "
					+ "   set episode_subject = ?, thumnail_path = ?, notice = ?, completed = ?, opened = ?"
					+ "   where art_number = ? and episode = ?";
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			pstmt.setString(++i, artInfoVo.getEpisode_subject());
			pstmt.setString(++i, artInfoVo.getThumnail_path());
			pstmt.setString(++i, artInfoVo.getNotice());
			pstmt.setString(++i, artInfoVo.getCompleted());
			pstmt.setString(++i, artInfoVo.getOpened());
			pstmt.setInt(++i, artInfoVo.getArt_number());
			pstmt.setInt(++i, artInfoVo.getEpisode());
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		
		return false;
	}
	
	/**
	 * 업로드된 작품 삭제
	 * @param artInfoVo
	 * @return
	 */
	public boolean deleteEpisode(ArtInfoVo artInfoVo, Date beforeDate) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			
			String sql = "delete from art_info where and episode = ?";
			pstmt1 = conn.prepareStatement(sql);
			pstmt1.setInt(1, artInfoVo.getEpisode());
			pstmt1.executeUpdate();
			
			String sql2 = "update art_cate set art_count = art_count - 1, last_update_day = ? where art_number = ?";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setDate(1, beforeDate);
			pstmt2.setInt(2, artInfoVo.getArt_number());
			pstmt2.executeUpdate();
			
			conn.commit();
			
			return true;
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			closeAll(null, pstmt1, null);
			closeAll(conn, pstmt2, null);
		}
		
		return false;
	}
	
	/**
	 * 에피소드 공개/비공개 여부
	 */
	
	
	/**
	 * 작품 읽기(전체)
	 * @param artInfoVo
	 * @return
	 */
	public ArtInfoVo viewEpisode(ArtInfoVo artInfoVo, UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		PreparedStatement pstmt3 = null;
		PreparedStatement pstmt4 = null;
		ResultSet rs = null;
		ArtInfoVo vo = new ArtInfoVo();
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			
			String sql1 = "update art_info set view_count = view_count + 1 where art_number = ? and episode = ?";
			pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setInt(1, artInfoVo.getArt_number());
			pstmt1.setInt(2, artInfoVo.getEpisode());
			pstmt1.executeUpdate();
			
			String sql2 = "insert into view_log (user_id, art_number, episode, view_date)"
					+ "    values (?,?,?,sysdate)";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, userVo.getUser_id());
			pstmt2.setInt(2, artInfoVo.getArt_number());
			pstmt2.setInt(3, artInfoVo.getEpisode());
			pstmt2.executeUpdate();
			
			String sql3 = "insert into user_active_log (user_id, active_index, active_date)"
					+ "    values (?,25,sysdate)";
			pstmt3 = conn.prepareStatement(sql3);
			pstmt3.setString(1, userVo.getUser_id());
			pstmt3.executeUpdate();
			
			String sql4 = "select * from art_info where and episode = ?";
			pstmt4 = conn.prepareStatement(sql4);
			pstmt4.setInt(1, artInfoVo.getEpisode());
			rs = pstmt4.executeQuery();
			if (rs.next()) {
				int art_number = rs.getInt("art_number");
				int episode = rs.getInt("episode");
				String episode_subject = rs.getString("episode_subject");
				String thumnail_path = rs.getString("thumnail_path");
				int view_count = rs.getInt("view_count");
				int heart_count = rs.getInt("heart_count");
				String notice = rs.getString("notice");
				Date update_date = rs.getDate("update_date");
				int price = rs.getInt("price");
				int charge_pay = rs.getInt("charge_pay");
				int free_pay = rs.getInt("free_pay");
				String completed = rs.getString("completed");
				String opened = rs.getString("deleted");
				

				vo.setArt_number(art_number);
				vo.setEpisode(episode);
				vo.setEpisode_subject(episode_subject);
				vo.setThumnail_path(thumnail_path);
				vo.setView_count(view_count);
				vo.setHeart_count(heart_count);
				vo.setNotice(notice);
				vo.setUpdate_date(update_date);
				vo.setPrice(price);
				vo.setCharge_pay(charge_pay);
				vo.setFree_pay(free_pay);
				vo.setCompleted(completed);
				vo.setOpened(opened);
				
			}
			
			conn.commit();
			return vo;
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.setAutoCommit(true);
			} catch (SQLException e) {
				e.printStackTrace();
			}
			closeAll(null, pstmt1, null);
			closeAll(null, pstmt2, null);
			closeAll(null, pstmt3, null);
			closeAll(conn, pstmt4, rs);
		}
		
		return null;
	}
	
	
	/**
	 * 작품 목록 받아오는 리스트
	 * @param rs
	 * @return
	 */
	private ArrayList<ArtCateVo> getArtCateVo(ResultSet rs) {
		try {
			ArrayList<ArtCateVo> artList = new ArrayList<>();
			while (rs.next()) {
				int art_number = rs.getInt("art_number");
				String art_type = rs.getString("art_type");
				String art_genre = rs.getString("art_genre");
				String user_id = rs.getString("user_id");
				int team_number = rs.getInt("team_number");
				String art_name = rs.getString("art_name");
				String art_thumnail = rs.getString("art_thumnail");
				String art_pr = rs.getString("art_pr");
				int art_count = rs.getInt("art_count");
				Date reg_art = rs.getDate("reg_art");
				int liked_count = rs.getInt("liked_count");
				int good_count = rs.getInt("good_count");
				int update_cycle = rs.getInt("update_cycle");
				String update_cycle_dm = rs.getString("update_cycle_dm");
				String update_rest = rs.getString("update_rest");
				Date last_update_day = rs.getDate("last_update_day");
				Date next_update_day = rs.getDate("next_update_day");
				String update_alert = rs.getString("update_alert");
				String adult = rs.getString("adult");
				String completed = rs.getString("completed");
				String deleted = rs.getString("deleted");
				
				ArtCateVo vo = new ArtCateVo();
				
				vo.setArt_number(art_number);
				vo.setArt_type(art_type);
				vo.setArt_genre(art_genre);
				vo.setUser_id(user_id);
				vo.setTeam_number(team_number);
				vo.setArt_name(art_name);
				vo.setArt_thumnail(art_thumnail);
				vo.setArt_pr(art_pr);
				vo.setArt_count(art_count);
				vo.setReg_art(reg_art);
				vo.setLiked_count(liked_count);
				vo.setGood_count(good_count);
				vo.setUpdate_cycle(update_cycle);
				vo.setUpdate_cycle_dm(update_cycle_dm);
				vo.setUpdate_rest(update_rest);
				vo.setLast_update_day(last_update_day);
				vo.setNext_update_day(next_update_day);
				vo.setUpdate_alert(update_alert);
				vo.setAdult(adult);
				vo.setCompleted(completed);
				vo.setDeleted(deleted);
				
				artList.add(vo);
			}
			return artList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}

package com.untitoonvl.persistence;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.untitoonvl.domain.LoginDto;
import com.untitoonvl.domain.UserVo;

public class UserDao {

	private final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private final String ID = "UNTITOONVL";
	private final String PW = "1234";
	
	public static UserDao instance;
	
	private UserDao() {	}
	
	public static UserDao getInstance() {
		if (instance == null) {
			instance = new UserDao();
		}
		return instance;
	}
	
	private Connection getConnection() {
		try {
			Class.forName(DRIVER);
			Connection conn = DriverManager.getConnection(URL, ID, PW);
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
	 * 회원가입
	 * @param userVo
	 * @return
	 */
	public boolean signupUser(UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "insert into user_info(user_id, user_pw, user_nick, user_name, user_email, user_birth, user_gender)"
					+ "   values(?,?,?,?,?, ?,?)";
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			pstmt.setString(++i, userVo.getUser_id());
			pstmt.setString(++i, userVo.getUser_pw());
			pstmt.setString(++i, userVo.getUser_nick());
			pstmt.setString(++i, userVo.getUser_name());
			pstmt.setString(++i, userVo.getUser_email());
			pstmt.setDate(++i, userVo.getUser_birth());
			pstmt.setString(++i, userVo.getUser_gender());
			int count = pstmt.executeUpdate();
			if (count > 0) {
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		return false;
	}
	
	/**
	 * 로그인 확인
	 * @param id
	 * @param pw
	 * @return
	 */
	public UserVo loginUser(LoginDto loginDto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select * from user_info where user_id = ? and user_pw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, loginDto.getUser_id());
			pstmt.setString(2, loginDto.getUser_pw());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String user_id = rs.getString("user_id");
				String user_pw = rs.getString("user_pw");
				String user_nick = rs.getString("user_nick");
				String user_name = rs.getString("user_name");
				String user_email = rs.getString("user_email");
				Date user_birth = rs.getDate("user_birth");
				String user_gender = rs.getString("user_gender");
				Date reg_date = rs.getDate("reg_date");
				int charge_money = rs.getInt("charge_money");
				int free_money = rs.getInt("free_money");
				int point = rs.getInt("point");
				int user_level = rs.getInt("user_level");
				String deleted = rs.getString("deleted");

				UserVo userVo = new UserVo(user_id, user_pw, user_nick, user_name, user_email, user_birth, user_gender,
						reg_date, charge_money, free_money, point, user_level, deleted);
				return userVo;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		
		return null;
	}
	
	/**
	 * 회원정보 수정
	 * @param userVo
	 * @return
	 */
	public boolean updateUser(UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "update user_info set user_pw = ?, user_nick = ?, user_email = ? where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			int i = 0;
			pstmt.setString(++i, userVo.getUser_pw());
			pstmt.setString(++i, userVo.getUser_nick());
			pstmt.setString(++i, userVo.getUser_email());
			pstmt.setString(++i, userVo.getUser_id());
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
	 * 일반작가 신청
	 * @param loginDto
	 * @return
	 */
	public boolean requestAuthor(UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt1 = null;
		PreparedStatement pstmt2 = null;
		
		try {
			conn = getConnection();
			conn.setAutoCommit(false);
			String sql1 = "update user_info set user_level = 3 where user_id = ?";
			pstmt1 = conn.prepareStatement(sql1);
			pstmt1.setString(1, userVo.getUser_id());
			pstmt1.executeUpdate();
			
			String sql2 = "insert into author_team (team_number, art_team, user_id1)"
					+ "    values (seq.nextval,?,?)";
			pstmt2 = conn.prepareStatement(sql2);
			pstmt2.setString(1, userVo.getUser_nick());
			pstmt2.setString(2, userVo.getUser_id());
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
	 * 회원탈퇴
	 * @param userVo
	 * @return
	 */
	public boolean deleteAccount(UserVo userVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = getConnection();
			String sql = "update user_info set deleted = 'O' where user_id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userVo.getUser_id());
			pstmt.executeUpdate();
			
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, null);
		}
		
		return false;
	}
	
	public boolean checkPasswd(UserVo userVo, String user_pw) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = getConnection();
			String sql = "select count(*) from user_info where user_id = ? user_pw = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userVo.getUser_id());
			pstmt.setString(2, user_pw);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				int count = rs.getInt(1);
				if (count > 0) {
					return true;
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(conn, pstmt, rs);
		}
		
		return false;
	}
}

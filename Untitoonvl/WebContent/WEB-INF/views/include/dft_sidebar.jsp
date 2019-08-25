<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<script>
	$(document).ready(function() {
		$("#signup").click(function() {
			location.href = "signup-form.dft";
		});
	});
	</script>
	<div
		class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
			
				<!-- 접었다 펴는 메뉴바부분 (사이드바) -->
				<div class="float-right">
					<div class="hamburger sidebar-toggle">
						<span class="line"></span>
						<span class="line"></span>
						<span class="line"></span>
					</div>
				</div>
				<!-- ====================== -->
				
				<div class="logo">
					<a href="index.jsp"> <!-- <img src="assets/images/logo.png" alt="" /> -->
						<span>Untitoonvl</span>
					</a>

				</div>
				
				<ul>
					<li class="label" style="padding-left:10px;padding-right:10px;">
						<form role="form" class="login form-inline" action="login-action.dft" method="post">
							<table>
							
								<tr><td>
								<label for="user_id" style="font-size:1.5rem;">
									아이디
								</label>
								</td><td>
								<input type="text" class="form-control input-default" id="user_id" name="user_id" style="height:3rem;color:#000000;font-size:1.2rem;" />
								</td></tr>

								<tr><td>
								<label for="user_pw" style="font-size:1.5rem;">
									비밀번호&nbsp;
								</label>
								</td><td>
								<input type="password" class="form-control input-default" id="user_pw" name="user_pw" style="height:3rem;color:#000000;font-size:1.2rem;" /><br>
								</td></tr>
								
								<tr><td colspan="2">
									<input type="checkbox" /> 
									로그인 유지
								</td></tr>
								
								<tr><td colspan="2">
								<button type="button" class="btn btn-info" id="signup" style="font-size:1.2rem;">
									회원가입
								</button>
								<button type="submit" class="btn btn-primary" style="font-size:1.2rem;">
									로그인
								</button>
								</td></tr>
							</table>
						</form>
					</li>
					
					<li class="label">
						<div align="center">
							<span>
								<!-- 이부분에 서치 만들기 -->
								<input type="text" class="input-default" id="search_art" name="search_art" style="height:3rem;color:#000000;" placeholder="작가명/작품명">
								<button type="button" id="btn_search_art" style="font-size:1.5rem;" class="btn btn-primary">
								찾기
								</button>
							</span>
						</div>
					</li>
				</ul>
				
				<ul>
				<!-- ===============기타=============== -->
					<li class="label">기타</li>
					
					<li><a class="sidebar-sub-toggle"><i class="ti-announcement"></i>
							공지사항 </a></li>
						
					<li><a class="sidebar-sub-toggle"><i class="ti-help-alt"></i>
							자주하는 질문 </a></li>
							
					<li><a class="sidebar-sub-toggle"><i class="ti-headphone-alt"></i>
							고객센터 </a></li>
					<!-- ===============기타 끝=============== -->
				</ul>
				<span>
				<br><br>
				</span>
			</div>
		</div>
	</div>
	<!-- 사이드바 -->
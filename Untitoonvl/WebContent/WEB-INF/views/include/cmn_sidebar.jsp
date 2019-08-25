<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(document).ready(function() {
	$("#logout").click(function() {
		location.href = "logout-action.dft";
	});
});
</script>

	<div
		class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
			
				<!-- 접었다 펴는 메뉴바부분 -->
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
					<li class="label">
						<div align="center">
							<table>
								<tr>
									<th colspan="2">
										${ userVo.user_nick } 님 환영합니다.
									</th>
								</tr>
								<tr>
									<td>
										유료 머니 
									</td>
									<td>
										${ userVo.charge_money } 머니
									</td>
								</tr>
								<tr>
									<td>
										무료 머니
									</td>
									<td>
										${ userVo.free_money } 머니
									</td>
								</tr>
								<tr>
									<td>
										포인트 
									</td>
									<td>
										${ userVo.point } 포인트
									</td>
								</tr>
								<tr><td colspan="2">
									<button type="button" class="btn btn-info" id="signup" style="font-size:1.2rem;">
										정보수정
									</button>
									<button type="button" class="btn btn-danger" id="logout" style="font-size:1.2rem;">
										로그아웃
									</button>
								</td></tr>
							</table>
						</div>
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

					<!-- ===============내 서재=============== -->
					<li class="label">내 서재</li>
					
					<li><a class="sidebar-sub-toggle"><i class="ti-money"></i>
							구매한 작품 </a></li>
							
					<li><a class="sidebar-sub-toggle"><i class="ti-eye"></i>
							최근 본 작품 </a></li>
							
					<li><a class="sidebar-sub-toggle"><i class="ti-heart"></i>
							마음에 넣은 작품 </a></li>
							 
					<li><a class="sidebar-sub-toggle"><i class="ti-thumb-up"></i>
							내가 추천한 작품 </a></li>
					<!-- ===============내 서재 끝=============== -->
					
					<!-- ===============나의 내역=============== -->
					<li class="label">나의 내역</li>

					<li><a href="cmn-user-info-form.cmn">
						<i class="ti-user"></i> 내 정보
					</a></li>

					<li><a class="sidebar-sub-toggle">
						<i class="ti-bell"></i> 최근 알림
					</a></li>

					<li><a class="sidebar-sub-toggle">
						<i class="ti-wallet"></i> 머니 충전
					</a></li>

					<li><a class="sidebar-sub-toggle">
						<i class="ti-email"></i> 메세지
					</a></li>
					<!-- ===============나의 내역 끝=============== -->		

					<!-- ===============기타=============== -->
					<li class="label">기타</li>
					
					<li><a class="sidebar-sub-toggle"><i class="ti-announcement"></i>
							공지사항 </a></li>
						
					<li><a class="sidebar-sub-toggle"><i class="ti-help-alt"></i>
							자주하는 질문 </a></li>
							
					<li><a class="sidebar-sub-toggle"><i class="ti-headphone-alt"></i>
							고객센터 </a></li>
							
					<li><a class="sidebar-sub-toggle"><i class="ti-comments-smiley"></i>
							감상 보내기 </a></li>
							
					<li class="label">&nbsp;</li>
					
					<li><a class="sidebar-sub-toggle"><i class="ti-pencil"></i>
							작가 등록 </a></li>	
					<!-- ===============기타 끝=============== -->
					
				</ul>
			</div>
		</div>
	</div>
	<!-- /# sidebar -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.peridot.vo.*" %>
<%@ page import="java.util.List" %>
<%
	List<CategoryVO> clist = (List<CategoryVO>)request.getAttribute("clist"); 
	List<CategoryVO> cglist = (List<CategoryVO>)request.getAttribute("cglist"); 
%> 
<!DOCTYPE html>

<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<!-- 슬릭 사용할떄 필요한것-->
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/><!--슬릭cdn-->
	<script src="/js/jquery-3.6.0.min.js"></script> <!--제이쿼리-->
	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script><!--슬릭cdn-->
	<script>
			$(document).ready(function(){
				$('.autoplay').slick({
					slid:'autoplay',
					prevArrow: $('.tBtn'),
					nextArrow: $('.tBtn2'),
					slidesToShow: 5,
					slidesToScroll: 1,
					autoplay: true,
					autoplaySpeed:5000,					
					responsive: [
					{
					  breakpoint: 1024,
					  settings: {
						slidesToShow: 3,
						slidesToScroll: 1
					  }
					},
					{
					  breakpoint: 600,
					  settings: {
						slidesToShow: 2,
						slidesToScroll: 1
					  }
					},
					{
					  breakpoint: 480,
					  settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					  }
					}
				  ]
				});
			});
	</script>
	<script>
		function dropdown(){
			$(".searcharea").toggle();
			$(".woman").hide();
			$(".man").hide();
			$(".kids").hide();
			$(".brand").hide();	
			$(".mypageshow").hide();
		}
		function dropdownWoman(){
			$(".woman").toggle();	 
			$(".searcharea").hide();
			$(".man").hide();
			$(".kids").hide();
			$(".brand").hide();	
			$(".mypageshow").hide();
		}
		function dropdownMan(){
			$(".man").toggle();
			$(".searcharea").hide();
			$(".woman").hide();
			$(".kids").hide();	 			
			$(".brand").hide();	
			$(".mypageshow").hide();
		}
		function dropdownKids(){
			$(".kids").toggle();
			$(".searcharea").hide();
			$(".woman").hide();	 
			$(".man").hide();
			$(".brand").hide();	
			$(".mypageshow").hide();
		}
		function dropdownBrand(){
			$(".brand").toggle();
			$(".searcharea").hide();
			$(".woman").hide();	 
			$(".man").hide();
			$(".kids").hide();
			$(".mypageshow").hide();					
		}
		function mypageShow(){
			$(".mypageshow").toggle();
			$(".searcharea").hide();
			$(".woman").hide();	 
			$(".man").hide();
			$(".kids").hide();	
			$(".brand").hide();				
							
		}
		function modal(){
			$(".modal").fadeIn();
			$(".mypageshow").hide();
			$(".searcharea").hide();
			$(".woman").hide();	 
			$(".man").hide();
			$(".kids").hide();	
			$(".brand").hide();	
		}
		function delgo(){
			$(".delgo2").fadeIn();
			$(".mypageshow").hide();
			$(".searcharea").hide();
			$(".woman").hide();	 
			$(".man").hide();
			$(".kids").hide();	
			$(".brand").hide();
			$(".modal").fadeOut();
		}
		function sideclose2(){
			$(".delgo2").fadeOut();
		}
		function sideclose(){
			$(".modal").fadeOut();
		}
		function dropdownclose(){
			$(".searcharea").hide();
		}
		/* 스크롤휠인데 스타일추가 */
		document.onwheel = function (event){
			if(event.wheelDelta < 0){
				$("header").addClass("fiexed");
			}
			/* 휠그숫자나타내기 */
			console.log(window.pageYOffset);
			
			if(window.pageYOffset == 0){
				$("header").removeClass("fiexed");
			}
		}
	</script>
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<link rel="stylesheet" href="/css/index.css">
	<link rel="stylesheet" href="/css/footer.css">
	<style>
	.fiexed{
		position:fixed;
		width:100%;
		top:0px;
	}
		
	</style>
</head>

<body>
<header class="header1">
		<div class="callheader">
			<b>고객센터 : 063-111-1234</b>
		</div>
		
		<div class="menu">
			<!-- 왼쪽 메뉴 -->
			<span class="title"><a href="/"><b>PERIDOT</b></a> &nbsp; / &nbsp;
			<a href="javascript:dropdownWoman();" class="cat"><b>여성</b></a>
			<a href="javascript:dropdownMan();" class="cat"><b>남성</b></a>
			<a href="javascript:dropdownBrand();" class="cat"><b>브랜드 스토리</b></a>
			</span>
			
			<!-- 로그인 X -->
			<!-- 오른쪽 메뉴 -->
			<c:if test = "${member == null }">
			<span class="linkarea">
				<a href="javascript:dropdown();" class="search1" >
					검색..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="/resources/img/검색.png" width="30px" height="30px">
				</a>

				<a href="javascript:mypageShow()" class="mypage">
				<img src="/resources/img/사용자계정.png" width="30px" height="30px">
				</a>
					
				<a href="javascript:modal()" class="cart">
				<img src="/resources/img/장바구니.png" width="30px" height="30px">
				</a>
			</span>
			<!-- 마이페이지 눌렀을 대 부여주는 영역 -->
			<div class="mypageshow">
				<div class="lo"><a href="/member/login"><b>로그인</b></a></div>
				<div class="neww"><a href="/member/join"><b>새 계정 만들기</b></a></div>
			</div>
			<!-- 검색 눌렀을 때 보여주는 영역 -->
			
			<div class="searcharea">
			<form action="List/List" method="post">
				<div class="inputb sLeft">
					<input type="search" class="sbox" placeholder="검색..">
					<button class="sbt" type="submit">검색</button>
				</div>
				</form>
				<div class="inputb sRight">
					<a href="javascript:dropdownclose();" class="x">
					<i class="fas fa-times"></i>
					</a>
				</div>
				<div>
					<h3 class="inputb sLeft good" >인기 검색 항목</h3>
				</div>
				<div>
					<h2 class="inputb sLeft good2" >슈퍼스타</h2>
					<h2 class="inputb sLeft good2" >대드-스타</h2>
					<h2 class="inputb sLeft good2" >브이스타</h2>
				</div>
			</div>
			</c:if>
			
			<!-- 로그인 O -->
			<!-- 오른쪽 메뉴 -->
			<c:if test = "${member != null }">
				
			<span class="linkarea">
				<a href="javascript:dropdown();" class="search1" >
					검색..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="/img/검색.png" width="30px" height="30px">
				</a>
				
				<span>
					<a href="javascript:mypageShow()" class="mypage">
					<img src="/img/사용자계정.png" width="30px" height="30px">
					</a>
			<!-- 여기 사용자정보 넣는곳 -->
					<span class="userinfo">안녕하세요 ${member.userFirstName}</span>	
					</span>
					<a href="javascript:modal()" class="cart">
					<img src="/img/장바구니.png" width="30px" height="30px">
					</a>
					</span>
			
			<!-- 마이페이지 눌렀을 대 부여주는 영역 -->
			<div class="mypageshow">
				<div class="lo"><a href="/member/mypage"><b>대시보드</b></a></div>
				<div class="lo"><a href="/member/update"><b>프로필</b></a></div>
				<div class="lo"><a href="/cart/orderList"><b>주문</b></a></div>
				<div><a href="/member/logout.do"><b>로그아웃</b></a></div>
			</div>
			<!-- 검색 눌렀을 때 보여주는 영역 -->
			<div class="searcharea">
				<div class="inputb sLeft">
					<input type="search" class="sbox" placeholder="검색..">
					<button class="sbt">검색</button>
				</div>
				<div class="inputb sRight">
					<a href="javascript:dropdownclose();" class="x">
					<i class="fas fa-times"></i>
					</a>
				</div>
				<div>
					<h3 class="inputb sLeft good" >인기 검색 항목</h3>
				</div>
				<div>
					<h2 class="inputb sLeft good2" >슈퍼스타</h2>
					<h2 class="inputb sLeft good2" >대드-스타</h2>
					<h2 class="inputb sLeft good2" >브이스타</h2>
				</div>
			</div>
			</c:if>
			
                  
                    
			<!-- 여성 카테고리 -->
			<div class="woman">
				<div class="warea wparea">
					<a>신상품<br></a>
					<a>기프트<br></a>
					<a>STAR COLLECTION<br></a>
					<a>JOURNET COLLECTION<br></a>
					<a>GOLDEN RESORT COLLECTION<br></a>
					<a>GAME EDT CAPSULE
				</div>
				<div class="warea">
					<a>스니커즈<br></a>
					<%

						for(CategoryVO vo : clist){
							
							if(vo.getCategoryCode() == 1 && vo.getCategoryGen() == 1){
								//out.print(1);
					%>
					<img src="/img/슈퍼스타이미지.png"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>&category=">슈퍼스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 2 && vo.getCategoryGen() == 1){
								
					%>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">볼스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 3 && vo.getCategoryGen() == 1){
								
					%>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">대드-스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 4 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/프란시이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">프란시<br></a>
					<%
							}else if(vo.getCategoryCode() == 5 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/하이스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">하이스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 6 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">미드스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 7 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">퓨어스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 8 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">런닝솔<br></a>
					<%
							}else if(vo.getCategoryCode() == 9 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">슬라이드<br></a>
					<%
							}else if(vo.getCategoryCode() == 10 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/스타단이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">스타단<br></a>
					<%
							}else if(vo.getCategoryCode() == 111 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/스타터이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">스타터<br></a>
					<%
							}else if(vo.getCategoryCode() == 12 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">브이스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 13 && vo.getCategoryGen() == 1){
					%>
					<img src="/img/예이미지.png"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">Yeah</a>
					<%
							}
							}
					%>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>진정한 안식처, 자연을 찾아 떠나는 특별한 여정을 구현한 컬렉션</p>
					<p class="pde">자세히 보기</p>
				</div>
			</div>
			<!-- 남성-->
			<div class="man">
				<div class="warea wparea">
					<a>신상품<br></a>
					<a>기프트<br></a>
					<a>STAR COLLECTION<br></a>
					<a>JOURNET COLLECTION<br></a>
					<a>GOLDEN RESORT COLLECTION<br></a>
					<a>GAME EDT CAPSULE
				</div>
				<div class="warea">
					<a>스니커즈<br></a>
					<%

						for(CategoryVO vo : clist){
							if(vo.getCategoryCode() == 11 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/슈퍼스타이미지.png"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>&categoryGen=<%=vo.getCategoryGen()%>">슈퍼스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 22 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">볼스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 33 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">대드-스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 44 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/프란시이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">프란시<br></a>
					<%
							}else if(vo.getCategoryCode() == 55 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/하이스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">하이스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 66 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">미드스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 77 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">퓨어스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 88 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">런닝솔<br></a>
					<%
							}else if(vo.getCategoryCode() == 99 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">슬라이드<br></a>
					<%
							}else if(vo.getCategoryCode() == 1010 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/스타단이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">스타단<br></a>
					<%
							}else if(vo.getCategoryCode() == 1111 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/스타터이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">스타터<br></a>
					<%
							}else if(vo.getCategoryCode() == 1212 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>&categoryGen=<%=vo.getCategoryGen()%>">브이스타<br></a>
					<%
							}else if(vo.getCategoryCode() == 1313 && vo.getCategoryGen() == 2){
					%>
					<img src="/img/예이미지.png"><a href="List/SuperstarList?categoryCode=<%= vo.getCategoryCode() %>">Yeah</a>
					<%	}
							}
							%>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>진정한 안식처, 자연을 찾아 떠나는 특별한 여정을 구현한 컬렉션</p>
					<p class="pde">자세히 보기</p>
				</div>
			</div>
			<!-- 브랜드 스토리 -->
			<div class="brand">
				<div class="warea">
					<a>STORIES OF SNEAKERS<br></a>
					<a>스타단<br></a>
					<a>Yeah<br></a>
					<a>퓨어스타<br></a>
					<a>대드-스타<br></a>
				</div>
				<div class="warea">
					<a>페리도트 월드<br></a>
				</div>
				<div class="wareas">
					<img src="/img/iphoto.jpg" class="ip">
					<h1>JOURNET COLLECTION</h1>
					<p>진정한 안식처, 자연을 찾아 떠나는 특별한 여정을 구현한 컬렉션</p>
					<p class="pde">자세히 보기</p>
				</div>
			</div>
		</div>
</header>
<header class="header2">
<!-- 장바구니이너 -->
<div class="modal">
	<div id="inner">
		<div class="tt">
			<div class="stitle">
				<b><i>내</i> 쇼핑백</b>
			</div>	
			<div class="x2">
				<a href="javascript:sideclose();" class="x">
				<i class="fas fa-times"></i>
			</a>
		</div>
		</div>
		<div class="scheck">
			쇼핑백에 있는 항목을 확인하십시오
		</div>
		<div class="shopshow">
			<ul>
			  <c:forEach items="${cartList}" var="cartList">
			  <li>
			   <div class="thumb">
			    <img class="inin" src="/img/${cartList.productImg1}" />
			   </div>
			   <div class="gdsInfo" >
			    <p>
			     <span>상품명 : </span>${cartList.productName}<br />
			     <span>개당 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice}" /><br />
			     <span>구입 수량 : </span>${cartList.productCount}<br />
			     <span>최종 가격 : </span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice * cartList.productCount}" />
			    </p>    
			   </div>
			   
			   
			  </li>
			  </c:forEach>
			 </ul>
		</div>
		<div class="c_all">
			<b><span class="c_all1">소계</span>
			<span class="c_all2">￦&nbsp;${cartTotal.totalPrice}</span></b>
		</div>
		<div>
			<button class="checkout" onclick="location.href='/cart/pay'">체크아웃하기</button><br>
			<a class="shopview" href="/cart/cartList"><b><i>→내</i> 쇼핑백 보기</b></a>
		</div>
	</div>
</div>
<!-- 삭제하시겠습니까?????? -->
<div class="delgo2">
	<div class="inner2">
	<div class="xxx">
		<div class="one">
			<b>상품을 삭제하시겠습니까?</b>
		</div>
		<div class="x9">
			<a href="javascript:sideclose2();" class="x">
				<i class="fas fa-times"></i>
			</a>
		</div>
	</div>	
		<div class="two">
			장바구니에서 상품을 삭제하시겠습니까?
		</div>
		<div class="three">
			<button class="threebt"><b>예, 삭제합니다</b></button>
		</div>
		<div class="four">
			<b>아니요, 그대로 두겠습니다</b>
		</div>
	</div>	
</div>
</header>
<section>
	<div class="vParent">
		<button class="vbt">←</button>
			<div class="v">
					<div class="vvv">
						<img src="/img/2.png">
						<div class="cont1">
							EW SHAPE, NEW LOVE:<br>
							OUR SKY-STAR
						</div>
					</div>
					<div class="vvv">
						<img src="/img/1.png">
						<div class="cont1">
							STAR BAG COLLECTION
						</div>
					</div>
			</div>
		<button class="vbt2">→</button>
	</div>
    <div class="twoarea">
        <img src="/img/index1.png" class="twoimg">
        <div>
            <span class="twotitle">THE WEEK'S DROP</span>
            <div class="twotitlecont">
                진정한 영혼으로 하이탑 스니커즈를 재해석한 볼스타 모델에서 영감을 받은,
                스카이스타 스니커즈는 미국 대학 바이브와 80년대 농구 씬을 느낄 수 있습니다.<br>
                <button class="twobt">지금 구매하세요</button>
            </div>
        </div>
    </div>
    <div class="threetitle">
        추천 상품
    </div>   
	<div class="autoParent">
		<button class="tBtn">←</button>
			<div class="autoplay">
				<div class="item">
					<div><img src="/img/장바구니신발1.jpg"></div>
					<div class="sname">블랙 스와로브스키 크리스탈 힐탭 화이트 캔버스 슈퍼스타 스니커즈</div>
					<div class="price">￦&nbsp;948,000</div>
				</div>
				<div class="item">
					<div><img src="/img/장바구니신발2.jpg"></div>
					<div class="sname">글리터리 스타 레오파드 프린트 포니 가죽 미드스타 스니커즈</div>
					<div class="price">￦&nbsp;818,000</div>
				</div>
				<div class="item">
					<div><img src="/img/장바구니신발3.jpg"></div>
					<div class="sname">핑크 골드 글리터 미드스타 스니커즈</div>
					<div class="price">￦&nbsp;818,000</div>
				</div>
				<div class="item">
					<div><img src="/img/장바구니신발1.jpg"></div>
					<div class="sname">블랙 스와로브스키 크리스탈 힐탭 화이트 캔버스 슈퍼스타 스니커즈</div>
					<div class="price">￦&nbsp;948,000</div>
				</div>
				<div class="item">
					<div><img src="/img/장바구니신발2.jpg"></div>
					<div class="sname">글리터리 스타 레오파드 프린트 포니 가죽 미드스타 스니커즈</div>
					<div class="price">￦&nbsp;818,000</div>
				</div>
				<div class="item">
					<div><img src="/img/장바구니신발3.jpg"></div>
					<div class="sname">핑크 골드 글리터 미드스타 스니커즈</div>
					<div class="price">￦&nbsp;818,000</div>
				</div>
			</div>
		<button class="tBtn2">→</button>	
	</div>
    <div class="fourimg">
        <div class="fourimgcont">
            <div class="imgf1">
                <img src="/img/섬세하게.png" class="fimgs">
                <div>
                    <button class="fourbt">섬세하게 여성적인</button>
                </div>
            </div>
            <div class="imgf2">
                <img src="/img/과감하게.png" class="fimgs">
                <div>
                    <button class="fourbt">과감하게 남성적인</button>
                </div>
            </div>
        </div>    
    </div>
    <div class="line"><img src="/img/작대기.PNG"></div>
    <div class="fivetitle">
        새 페릿 컬렉션
    </div>    
    <div>
        <div>
            <img src="/img/새 컬렉션.PNG" class="newcollec">
        </div>
    </div>
    <div class="dnabt">
        <button class="dna">페리도트 DNA로의 여정</button>
    </div>
    <div class="line2"><img src="/img/작대기.PNG"></div>
    <div class="lasttitle">
        페릿 세계 뉴스
    </div> 
    <div class="lastcenter">
		<div>
		<img src="/img/l1.png">
			<div class="lshape">
				<div class="lastone">
					FROM VENICE TO VENICE
				</div>
				<div class="lasttwo">
					OUR JOURNEY WITH CORY JUNEAU
				</div>
				<div class="lastthree">
					페리도트의 길, 이야기와 뿌리의 도시들 - 이 모두를 프로 스케이트보더 Cory Juneau와 함께 다시 여행했습니다.
					이 젊은 몽상가의 놀라운 여정에 깊에 스며들어갈 컬래버레이션으로 스케이트 보울의 정상에서 보는 것 같이 그의 시선에서 이 세상을 바라볼 수 있게 해줄 것입니다.
				</div>
				<div class="lastfour">
					<a>자세히 알아보기</a>
				</div>
			</div>
		</div>
		<div>
			<img src="/img/l2.png">
			<div class="lshape">
				<div class="lastone">
					NEW OPENING
				</div>
				<div class="lasttwo">
					THE GOLDEN TV
				</div>
				<div class="lastthree">
					피지컬이 디지털을 만나는 공간, 나만의 이야기가 스포트라이트를 받고 경험이 내 주위를 감싸는 공간이 펼쳐집니다. 
					밀라노 Via Verri의 페리도트 새 스토어를 방문해 보세요. 기억에 남을 몰입형 여정을 떠날 시간입니다.
				</div>
				<div class="lastfour">
					<a>매장 가는 법</a>
				</div>
			</div>
			</div>
		<div>
			<img src="/img/l3.png">
			<div class="lshape">
				<div class="lastone">
					EXCLUSIVE SERVICES
				</div>
				<div class="lasttwo">
					PICK UP IN STORE
				</div>
				<div class="lastthree">
					매장에서 수령 서비스를 이용하시면 페리도트 웹사이트상의 폭넓고, 완벽히 구비된 제품 중에서 원하시는 제품을 골라 원하시는 매장으로 배송할 수 있습니다. 고객님에게 특별한 도움을 제공하기 위해 판매 전문가가 기다리고 있습니다.
				</div>
				<div class="lastfour">
					<a>더 읽어보기</a>
				</div>
			</div>
		</div>
		<div>
			<img src="/img/l4.png">
			<div class="lshape">
				<div class="lastone">
					CO-CREATION
				</div>
				<div class="lasttwo">
					스니커즈메이커
				</div>
				<div class="lastthree">
					창의성은 공유하는 과정입니다. 참여해보세요. 스니커즈메이커는 여러분의 기분을 유니크한 제품으로 해석해 여러분만의 것으로 만들어드립니다.
				</div>
				<div class="lastfour">
					<a>페리도트와 함께 만들어요</a>
				</div>
			</div>
			</div>
		<div>
			<img src="/img/l5.png">
			<div class="lshape">
				<div class="lastone">
							RESTYLING
					</div>
				<div class="lasttwo">
					FORTE DEI MARMI 매장
				</div>
				<div class="lastthree">
					Bagno Golden에서 Edicola Golden까지: Forte dei Marmi에 있는 당사 매장이 이탈리아 전통에 맞춰 새롭게 단장하였습니다.오셔서 최신 Forte dei Marmi 매장의 컨셉을 확인해 보십시오.
				</div>
				<div class="lastfour">
					<a>매장 가는 법</a>
				</div>
			</div>
			</div>
		<div>
			<img src="/img/l6.png">
			<div class="lshape">
				<div class="lastone">
					NEW OPENING
				</div>
				<div class="lasttwo">
					RODEO DRIVE STORE
				</div>
				<div class="lastthree">
					로스엔젤레스 로데오 드라이브에 문을 연 새 스토어에서 아메리칸 스타일과 산업 디자인이 만났습니다. 페리도트 로데오 드라이브 스토어에서 유니크한 분위기를 만끽해 보세요.
				</div>
				<div class="lastfour">
					<a>HOW DO I GET THERE?</a>
				</div>
			</div>
		</div>
	</div>
    <!--도큐먼트레디가 없어서 위에 올려놓으면 화면이 그려지기 전이라서 실행 안됨-->
    <script>
       $('.v').slick({
		  slidesToShow: 1,
		  slidesToScroll: 1,
		  autoplay: true,
		  autoplaySpeed: 3000,
		  prevArrow: $('.vbt'),
		  nextArrow: $('.vbt2')
		});
		
		
		$('.lastcenter').slick({
		  centerMode: true,
		  centerPadding: '60px',
		  slidesToShow: 3,
		  responsive: [
			{
			  breakpoint: 768,
			  settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '40px',
				slidesToShow: 3
			  }
			},
			{
			  breakpoint: 480,
			  settings: {
				arrows: false,
				centerMode: true,
				centerPadding: '40px',
				slidesToShow: 1
			  }
			}
		  ]
});
    </script>
	</section>
	 <footer>
        <div class="hr">
        <div class="title">
            <i>PERIDOT</i> NEWSLETTER
        </div>
        <div class="content">
            peridot에서 전해드리는 새로운 프로젝트, 최신 뉴스, 신상품 정보를 가장 먼저 받아보세요!
        </div>
        
        <form action="get" >
            <p class="content_email">
                <input type="email" class="email" name="email" onkeyup='agreedown(this)' onfocus="test(this)" onblur="test2(this)" autocomplete="off" required>
                <label for="user_email"><span><em>이메일 주소</em></span></label>
            </p>
        </form>
        <br>
        <br>
        <div class="agree" id="agree">
            <div class="content_radio">
                <input type="radio" name="email" value="여성">여성
                <input type="radio" name="email" value="남성">남성
                <input type="radio" name="email" value="무응답">무응답
            </div>
            <div class="content_agree">
            <input type="checkbox" name="agree" value="동의여부">개인정보보호 정책을 읽었으며 이메일을 통한 마케팅을 목적으로 한 개인 정보 처리에 동의합니다.  
            </div>
            <div class="content_btn">
                <button type="submit" class="btn_regist">신청하기</button>
            </div>
        </div>
    </div>
        <div class="footbar">
            <div class="footbar_div0">
                <ul class="footbar_menu0">
                    <li>
                        <i class="fas fa-box"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="">배송지: KR / KO</a></li>
                    <li>
                        <i class="fas fa-map-marker-alt"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="">Find a store</a></li>
                </ul>
            </div>
            <div class="footbar_div1">
                <p><a href="#" class="btn1">고객 관리</a></p>
                <ul class="footbar_menu1">    
                    <li><a href="">Exclusive Services</a></li>
                    <li><a href="">고객 관리</a></li>
                    <li><a href="">배송 및 반품</a></li>
                    <li><a href="">결재 수단</a></li>
                </ul>
            </div>
            <div class="footbar_div2">
                <p><a href="#" class="btn2">COOPORATE</a></p>
                <ul class="footbar_menu2">
                    <li><a href="">연락처</a></li>
                    <li><a href="">일반 약관</a></li>
                    <li><a href="">사용 약관</a></li>
                    <li><a href="">개인정보 보호 정책</a></li>
                </ul>
            </div>
            <div class="footbar_div3">
                <p><a href="#" class="btn3">GOLDEN WORLD</a></p>
                <ul class="footbar_menu3">
                    <li><a href="">The brand</a></li>
                    <li><a href="">Sneaker Makers</a></li>
                    <li><a href="">Lab</a></li>
                    <li><a href="">#twas</a></li>
                </ul>
            </div>
            <div class="footbar_div4">
                    <div class="div4_1">
                        <h4><em>중요 알림입니다</em></h4>
                    </div>
                    <div class="div4_2">
                        <p>스크린 리더를 사용 중이고 문제가 있는 경우 다음 연락처로 전화래 주시기 바랍니다.</p>
                    </div>
                    <div class="div4_3">
                        <b>Customer Care</b>
                    </div>
            </div>
        </div>
        <script>
			function test(item){
				var $item = $(item);
				
				$item.css("border-bottom", "1px solid darkgray");
				$item.next("label").find("span").css({ "transform":"translateY(-100%)","font-size":"24px","color":"gray"});
				$item.next("label::after").css({"width":"100%","transform":"translateX(0)"});
			}
			function test2(item){
				var value = item.value;
				var $item = $(item);
				if(value == ""){	
					$item.next("label").find("span").css({ "transform":"inherit","font-size":"inherit","color":"inherit"});
					$item.next("label::after").css({"width":"inherit","transform":"inherit"});
				}
			}
		</script>
    </footer>
</body>


</html>

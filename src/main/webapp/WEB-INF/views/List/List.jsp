<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.peridot.vo.*" %>
<%@ page import="java.util.List" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%
	List<ProductVO> list = (List<ProductVO>)request.getAttribute("list"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!--제이쿼리-->
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
		function sc(){
			$(".sbt").toggle();
			$(".ctg").hide();
		}
		function ctggo(){
			$(".ctg").toggle();
			$(".sbt").hide();
		}
		 function agreedown(item){
            var value = $(item).val();
            if(value.length >= 1){
                $('#agree').show();
            }else{
                $('#agree').hide();
            }
            /*
            if($('#agree').css('display') == 'none'){
                $('#agree').show();
            }else{
                $('#agree').hide();
            }
            */
           $(document).ready(function(){
                $()
           });
        }
	</script>
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/resources/css/NoLoginHeader.css">
	<link rel="stylesheet" href="/resources/css/list.css">
	<link rel="stylesheet" href="/resources/css/footer.css">
	<style>
	.fiexed{
		position:fixed;
		width:100%;
		top:0px;
		z-index:10;
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
			<span class="title"><b>PERIDOT</b> &nbsp; / &nbsp;
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
				<div class="lo"><a><b>주문</b></a></div>
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
					<img src="/resources/img/슈퍼스타이미지.png"><a>슈퍼-스타<br></a>
					<img src="/resources/img/볼스타이미지.png" class="shoesimg"><a>볼스타<br></a>
					<img src="/resources/img/대드스타이미지.png" class="shoesimg"><a>대드-스타<br></a>
					<img src="/resources/img/프란시이미지.png" class="shoesimg"><a>프란시<br></a>
					<img src="/resources/img/하이스타이미지.png" class="shoesimg"><a>하이스타<br></a>
					<img src="/resources/img/미드스타이미지.png" class="shoesimg"><a>미드스타<br></a>
					<img src="/resources/img/퓨어스타이미지.png" class="shoesimg"><a>퓨어스타<br></a>
					<img src="/resources/img/런닝솔이미지.png" class="shoesimg"><a>런닝솔<br></a>
					<img src="/resources/img/슬라이드이미지.png" class="shoesimg"><a>슬라이드<br></a>
					<img src="/resources/img/스타단이미지.png" class="shoesimg"><a>스타단<br></a>
					<img src="/resources/img/스타터이미지.png" class="shoesimg"><a>스타터<br></a>
					<img src="/resources/img/브이스타이미지.png" class="shoesimg"><a>브이스타<br></a>
					<img src="/resources/img/예이미지.png"><a>Yeah</a>
				</div>
				<div class="wareas">
					<img src="/resources/img/iphoto.jpg" class="ip">
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
					<img src="/resources/img/슈퍼스타이미지.png"><a>슈퍼-스타<br></a>
					<img src="/resources/img/볼스타이미지.png" class="shoesimg"><a>볼스타<br></a>
					<img src="/resources/img/대드스타이미지.png" class="shoesimg"><a>대드-스타<br></a>
					<img src="/resources/img/프란시이미지.png" class="shoesimg"><a>프란시<br></a>
					<img src="/resources/img/미드스타이미지.png" class="shoesimg"><a>미드스타<br></a>
					<img src="/resources/img/퓨어스타이미지.png" class="shoesimg"><a>퓨어스타<br></a>
					<img src="/resources/img/런닝이미지.png" class="shoesimg"><a>런닝<br></a>
					<img src="/resources/img/런닝솔이미지.png" class="shoesimg"><a>런닝솔<br></a>
					<img src="/resources/img/슬라이드이미지.png" class="shoesimg"><a>슬라이드<br></a>
					<img src="/resources/img/스타단이미지.png" class="shoesimg"><a>스타단<br></a>
					<img src="/resources/img/스타터이미지.png" class="shoesimg"><a>스타터<br></a>
					<img src="/resources/img/브이스타이미지.png" class="shoesimg"><a>브이스타<br></a>
					<img src="/resources/img/예이미지.png"><a>Yeah</a>
				</div>
				<div class="wareas">
					<img src="/resources/img/iphoto.jpg" class="ip">
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
					<a>골든 월드<br></a>
				</div>
				<div class="wareas">
					<img src="/resources/img/iphoto.jpg" class="ip">
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
			<div class="inin">
<!-- 장바구니에 넣으면 이미지 뜨게 하기 db에서 가져와 사이즈 정해놓기 오버플로어 오토 -->
			</div>
			<div class="carea">
				<div>
					<span class="content"><b>어쩌구저저구  페이드인페이드아웃 js</b></span><br>
					<span class="cprice"><b>￦&nbsp;0</b></span> <br>
					<span class="csize ccc">사이즈: </span>
					<span class="csize">수량: </span>
					<br>
					<br>
					<a href="javascript:delgo()" class="cdel" ><b>삭제</b></a>
				</div>
			</div>
		</div>
		<div class="c_all">
			<b><span class="c_all1">소계</span>
			<span class="c_all2">￦&nbsp;0</span></b>
		</div>
		<div>
			<button class="checkout">체크아웃하기</button><br>
			<a class="shopview"><b><i>→내</i> 쇼핑백 보기</b></a>
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
	<div class="bodyy">
    <div>
        <div class="onee">
			<div><img src="/resources/img/listphoto.png" class="img1"></div>
			<div class="header11">
				<div class="title1">슈퍼-스타</div>
				<div class="up">2007년에 디자인된 슈퍼-스타 스니커즈는 골든구스 스타 로고를 활용한 스니커즈 디자인이 시작된 최초의 아이템입니다. 
					 이 베이직한 아이템은 캐주얼하고 클래식하면서도 현대적인 디자인으로 골든구스만의 세련됨을 연출하는 새로운 접근 방식을 보여주고 있습니다.
					 다양한 색상과 특유의 가공 처리, 빈티지 효과가 적용된 골든구스의 아이코닉 스니커즈를 살펴보세요.
				</div> 
			</div>			
		</div>
    </div>
    <div class="middle">
		<div>
        <a href="javascript:sc();" class="mbt">→ SIZE</a>
			<!-- 사이즈버튼-->
			<div class="sbt">
				<div class="checksize">	
					<div class="size1 sizeall">
						<input type="checkbox" name="sizecheck" value="34"> 34 <br>
						<input type="checkbox" name="sizecheck" value="34"> 35 <br>
						<input type="checkbox" name="sizecheck" value="34"> 36 <br>
						<input type="checkbox" name="sizecheck" value="34"> 37 <br>
						<input type="checkbox" name="sizecheck" value="34"> 38 <br>
					</div>
					<div class="sizeall">
						<input type="checkbox" name="sizecheck" value="34">39 <br>
						<input type="checkbox" name="sizecheck" value="34">40 <br>
						<input type="checkbox" name="sizecheck" value="34">41 <br>
						<input type="checkbox" name="sizecheck" value="34">42 <br>
					</div>
				</div>	
				<div class="info1">
					고객님께 맞는 치수가 없나요? 상품을 선택한 후 NOTIFY ME를 클릭하세요:<br>
					찾으시는 상품이 도착하면 바로 알려드리겠습니다.
				</div>
			</div>	
		</div>
		<div>
        <a href="javascript:ctggo()"class="mbt mbtc">→ 분류 기준</a>
			<!-- 분류버튼-->
			<div class="ctg">
				<div class="checksize">	
					<div class="size11 sizeall">
						<input type="checkbox" name="sizecheck" value="34"> Our favorites <br>
						<input type="checkbox" name="sizecheck" value="34"> Price Low To high <br>
						<input type="checkbox" name="sizecheck" value="34"> Price High To Low <br>
						<input type="checkbox" name="sizecheck" value="34"> Name(A - Z) <br>
						<input type="checkbox" name="sizecheck" value="34"> Name(Z - A)
					</div>
				</div>	
			</div>
		</div>
    </div>
<!-- 상품리스트 보여주눈 곳 -->    
<div class="mainn">	
 	<div class="roww">
		<div class="calumee">
			<%
			for(ProductVO vo : list){
			%>
			<a href="/List/Detail?productNo=<%=vo.getProductNo()%>">
				<img src="/resources/img/<%= vo.getProductImg1()%>" class="lastimgshow"><br>
				<%= vo.getProductName() %><br>
				<%= vo.getProductPrice() %>
			</a>
		</div>
	</div>	
		<%
			}
		%>
</div>	
        <div class="last1">
            현실이 된 꿈, 여전히 계속될 이야기. 더 나은 곳으로 세상을 바꾸고 싶은 모든 분께 페리도트 20주년을 바칩니다. 페리도트의 20년, 사랑의 20년.
        </div>
        <div class="logo">
            <img src="/resources/img/lastlogo.png">
        </div>
	</div>
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
                <input type="email" class="email" name="email" onkeyup='agreedown(this)'autocomplete="off" required>
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
    </footer>
</body>
</html>
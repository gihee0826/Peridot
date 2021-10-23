<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="com.peridot.vo.*" %>  
<%@ page import="java.util.List" %>  
<%
	ProductVO vo = (ProductVO)request.getAttribute("detail");
	List<CategoryVO> clist = (List<CategoryVO>)request.getAttribute("clist"); 
	List<CategoryVO> cglist = (List<CategoryVO>)request.getAttribute("cglist"); 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<script src="/js/jquery-3.6.0.min.js"></script>
    <script>
		function dropdown(){
			$(".header1 .searcharea").toggle();
			$(".header1 .woman").hide();
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownWoman(){
			$(".header1 .woman").toggle();	 
			$(".header1 .searcharea").hide();
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownMan(){
			$(".header1 .man").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();		
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownKids(){
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
			$(".header1 .mypageshow").hide();
		}
		function dropdownBrand(){
			$(".header1 .brand").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .mypageshow").hide();					
		}
		function mypageShow(){
			$(".header1 .mypageshow").toggle();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();				
							
		}
		function modal(){
			$(".header2 .modal").fadeIn();
			$(".header1 .mypageshow").hide();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();	
		}
		function delgo(){
			$(".header2 .delgo2").fadeIn();
			$(".header1 .mypageshow").hide();
			$(".header1 .searcharea").hide();
			$(".header1 .woman").hide();	 
			$(".header1 .man").hide();
			$(".header1 .brand").hide();
			$(".header2 .modal").fadeOut();
		}
		function sideclose2(){
			$(".header2 .delgo2").fadeOut();
		}
		function sideclose(){
			$(".header2 .modal").fadeOut();
		}
		function dropdownclose(){
			$(".header1 .searcharea").hide();
		}
	</script>
    <script>
        $(document).ready(function(){
            $("#left4 input").focus(function(){
                //$(this).css({ "background-color":"red" 
                $(this).parent().css("box-shadow","0px 0px 0px 2px lightgray");
            }); 
            $("#left4 input").blur(function(){
                $(this).parent().css("box-shadow","inherit");
            });

            $("#left5 input").focus(function(){
                //$(this).css({ "background-color":"red" 
                $(this).parent().css("box-shadow","0px 0px 0px 2px lightgray");
            }); 
            $("#left5 input").blur(function(){
                $(this).parent().css("box-shadow","inherit");
            });
        });
    </script>
    <script src="media_login.js" defer></script>
    <link rel="stylesheet" href="/resources/css/detail.css">
    <script>
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
    <script src="/js/media.js" defer></script>
    <link rel="stylesheet" href="footer.css">
   <script>
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

        $(window).scroll(  function() {
            if(window.pageYOffset >= $("table:first").offset().top) {
                $(".left").css("position", "absolute")
            }
        });
	</script>
	<script>
		function checkboxArr() {
		    var checkArr = [];     // 배열 초기화
		    $("input[name='test_check']:checked").each(function(i)) {
		        checkArr.push($(this).val());     // 체크된 것만 값을 뽑아서 배열에 push
		    }
		 
		    $.ajax({
		        url: 'test_check'
		        , type: 'post'
		        , dataType: 'text'
		        , data: {
		            valueArrTest: checkArr
		        }
		    });
		}
	</script>
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/resources/css/detail.css">
	<link rel="stylesheet" href="/resources/css/NoLoginHeader.css">
	<style>
		.fiexed{
			position:fixed;
			width:100%;
			top:0px;
		z-index:10;
	}
	.gdsInfo{
		margin-left:20px;
	}
	.num1,.num2{
		width: 200px;
	    height: 50px;
	    border: 1px solid lightgray;
	    margin: 10px auto;
	    margin-left: 0px;
	    background-color: white;
	}
	.sel1,.sel2{
		 width: 200px;
	    height: 50px;
	    border: none;
	    margin: 15px auto;
	    background-color: white;
	    position: relative;
	    bottom: 15px;
	    padding-left: 5px;
	}
	.content img { display: block; margin: 15px auto;}
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
				<c:if test="${member.userAdmin == 'y'}">
					<a href="/admin/main">관리자 페이지</a>
				</c:if>
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
                <%

                		for(CategoryVO vo1 : clist){
							
							if(vo1.getCategoryCode() == 1 && vo1.getCategoryGen() == 1){
								//out.print(1);
					%>
					<img src="/img/슈퍼스타이미지.png"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>&category=">슈퍼스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 2 && vo1.getCategoryGen() == 1){
								
					%>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">볼스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 3 && vo1.getCategoryGen() == 1){
								
					%>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">대드-스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 4 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/프란시이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">프란시<br></a>
					<%
							}else if(vo1.getCategoryCode() == 5 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/하이스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">하이스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 6 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">미드스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 7 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">퓨어스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 8 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">런닝솔<br></a>
					<%
							}else if(vo1.getCategoryCode() == 9 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">슬라이드<br></a>
					<%
							}else if(vo1.getCategoryCode() == 10 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/스타단이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">스타단<br></a>
					<%
							}else if(vo1.getCategoryCode() == 111 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/스타터이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">스타터<br></a>
					<%
							}else if(vo1.getCategoryCode() == 12 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">브이스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 13 && vo1.getCategoryGen() == 1){
					%>
					<img src="/img/예이미지.png"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">Yeah</a>
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

						for(CategoryVO vo1 : clist){
							if(vo1.getCategoryCode() == 11 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/슈퍼스타이미지.png"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>&categoryGen=<%=vo1.getCategoryGen()%>">슈퍼스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 22 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">볼스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 33 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">대드-스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 44 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/프란시이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">프란시<br></a>
					<%
							}else if(vo1.getCategoryCode() == 55 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/하이스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">하이스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 66 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">미드스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 77 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">퓨어스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 88 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">런닝솔<br></a>
					<%
							}else if(vo1.getCategoryCode() == 99 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">슬라이드<br></a>
					<%
							}else if(vo1.getCategoryCode() == 1010 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/스타단이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">스타단<br></a>
					<%
							}else if(vo1.getCategoryCode() == 1111 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/스타터이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">스타터<br></a>
					<%
							}else if(vo1.getCategoryCode() == 1212 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>&categoryGen=<%=vo1.getCategoryGen()%>">브이스타<br></a>
					<%
							}else if(vo1.getCategoryCode() == 1313 && vo1.getCategoryGen() == 2){
					%>
					<img src="/img/예이미지.png"><a href="/List/SuperstarList?categoryCode=<%= vo1.getCategoryCode() %>">Yeah</a>
					<%	}
							}
							%>
            </div>
            <div class="wareas">
                <img src="./img/iphoto.jpg" class="ip">
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
                <img src="./img/iphoto.jpg" class="ip">
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
			  <div class="fff">
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
<br>
<br>
<br>
<section>
    <div class="detail">
        <div class="left">
       
            <p class="left_1"><%= vo.getCategory() %></p>
            <h2 class="left_2"> <%= vo.getProductName() %></h2>
            <div class="left_3"><b>￦<%= vo.getProductPrice() %></b></div>
        </div>
        
        <div class="main">
            <div class="content">
				<div><img src="/img/<%=vo.getProductImg1()%>"></div>
				<div><img src="/img/<%=vo.getProductContent1()%>"></div>
				<div><img src="/img/<%=vo.getProductContent2()%>"></div>
				<div><img src="/img/<%=vo.getProductContent3()%>"></div>
            </div>
        </div>
        <form action="/cart/cart" method="post">
        <div class="right">
            <div class="right_1">
                <p>사이즈&nbsp;:</p>
                <div class="num1">
                   <select name="productSize" class="sel1">
                   		<option name="240" value="240">240</option>
                   		<option name="250" value="250">250</option>
                   		<option name="260" value="260">260</option>
                   		<option name="270" value="270">270</option>
                   		<option name="280" value="280">280</option>
                   		
                   </select>
                </div>
                <p>수량&nbsp;:</p>
                <div class="num2">
                   <select name="productCount" class="sel2">
                   		<option name="1" value="1">1</option>
                   		<option name="2" value="2">2</option>
                   		<option name="3" value="3">3</option>
                   		<option name="4" value="4">4</option>
                   		<option name="5" value="5">5</option>
                   </select>
                </div>
            </div>
            <input type="hidden" id="productNo" name="productNo" value="<%=vo.getProductNo()%>">
            <div class="right_2">
                <input class="right_btn" type="button" value="장바구니 추가">
                <script>
				 $(".right_btn").click(function(){
				  var productNo = $("#productNo").val();
				  var productCount = $("#productCount").val();
				           
				  var data = {
					productNo : productNo,
					productCount : productCount
				    };
				  
				  $.ajax({
				   url : "/cart/cart",
				   type : "post",
				   data : data,
				   success : function(result){
				    
				    if(result == 1) {
				     alert("장바구니에 담겼습니다.");
				    // $("#productCount").val("1");
				    } else {
				     alert("회원만 사용할 수 있습니다.")
				    // $("#productCount").val("1");
				    }
				   },
				   error : function(){
				    alert("장바구니에 담지 못했습니다.");
				   }
				  });
				 });
				</script>
            </div>
        </div>
        </form>
    </div>
</section>
<br>
<br>
</body>
</html>
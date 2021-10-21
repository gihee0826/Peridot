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
	<script src="/js/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" type="text/css" href="/css/slick.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  
	<script type="text/javascript" src="/js/slick.min.js"></script>
	<style>
	 /*
	 section#content ul li { display:inline-block; margin:10px; }
	 section#content div.goodsThumb img { width:200px; height:200px; }
	 section#content div.goodsName { padding:10px 0; text-align:center; }
	 section#content div.goodsName a { color:#000; }
	 */
	 div#content ul li { margin:10px 0; }
	 div#content ul li img { width:240px; height:240px; }
	 div#content ul li::after { content:""; display:block; clear:both; }
	 div#content div.thumb { float:left; width:250px; }
	 div#content div.gdsInfo { float:right; }
	 div#content div.gdsInfo { font-size:19px; line-height:2; }
	 div#content div.gdsInfo span { display:inline-block; width:100px; font-weight:bold; margin-right:10px; }
	 div#content div.gdsInfo .delete { text-align:right; }
	 div#content div.gdsInfo .delete button { font-size:22px;
	            padding:5px 10px; border:1px solid #eee; background:#eee;}
	 .allCheck { float:left; width:200px; }
	.allCheck input { width:16px; height:16px; }
	.allCheck label { margin-left:10px; }
	.delBtn { float:right; width:300px; text-align:right; }
	.delBtn button { font-size:18px; padding:5px 10px; border:1px solid #eee; background:#eee;}
	
	.checkBox { float:left; width:30px; }
	.checkBox input { width:16px; height:16px; }
	.pay_btn{
		    background-color: black;
		    color: white;
		    width: 400px;
		    height: 50px;
		    font-size: 14px;
		}
		.price1{ font-size:18px;}
	</style>
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
		$(document).ready(function(){
				$('.autoplay').slick({
					slid:'autoplay',
					prevArrow: $('.tBtn'),
					nextArrow: $('.tBtn2'),
					slidesToShow: 3,
					slidesToScroll: 1,
					autoplay: true,
					autoplaySpeed: 3000,					
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
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<link rel="stylesheet" href="/css/Cart.css">
	<link rel="stylesheet" href="/css/footer.css">
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
					<a>골든 월드<br></a>
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

<section>
<form action="/cart/pay" method="post">
		
	<div class="big">	
	<!-- 비로그인 -->
		<div id="content">
	 <ul>
	 <li>
	  <div class="allCheck">
	   <input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
	   <script>
		$("#allCheck").click(function(){
		 var chk = $("#allCheck").prop("checked");
		 if(chk) {
		  $(".chBox").prop("checked", true);
		 } else {
		  $(".chBox").prop("checked", false);
		 }
		});
		</script>
	  </div>
	  
	  <div class="delBtn">
	   <button type="button" class="selectDelete_btn">선택 삭제</button> 
	   <script>
		 $(".selectDelete_btn").click(function(){
		  var confirm_val = confirm("정말 삭제하시겠습니까?");
		  
		  if(confirm_val) {
		   var checkArr = new Array();
		   
		   $("input[class='chBox']:checked").each(function(){
		    checkArr.push($(this).attr("data-cartNum"));
		   });
		    
		   $.ajax({
			   url : "/cart/deleteCart",
			   type : "post",
			   data : { chbox : checkArr },
			   success : function(result){
			    if(result == 1) {          
			     location.href = "/cart/cartList";
			    } else {
			     alert("삭제 실패");
			    }
			   }
			  });
		  } 
		 });
		</script>
	  </div>
	  
	 </li>
	  <c:forEach items="${cartList}" var="cartList">
	  <li>
	  <div class="checkBox">
	   <input type="checkbox" name="chBox" class="chBox" data-cartNum="${cartList.cartNo}" />
	   <script>
		 $(".chBox").click(function(){
		  $("#allCheck").prop("checked", false);
		 });
		</script>
	  </div>
	   <div class="thumb">
	    <img src="/img/${cartList.productImg1}" />
	   </div>
	   <div class="gdsInfo">
	    <p>
	     <span>상품명</span>${cartList.productName}<br />
	     <span>개당 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice}" /> 원<br />
	     <span>구입 수량</span>${cartList.productCount} 개<br />
	     <span>최종 가격</span><fmt:formatNumber pattern="###,###,###" value="${cartList.productPrice * cartList.productCount}" /> 원
	    </p>
	    
	    <div class="delete">
		 <button type="button" class="delete_${cartList.cartNo}_btn" data-cartNo="${cartList.cartNo}">삭제</button>
		 
		 <script>
		  $(".delete_${cartList.cartNo}_btn").click(function(){
		   var confirm_val = confirm("정말 삭제하시겠습니까?");
		   
		   if(confirm_val) {
		    var checkArr = new Array();
		    
		    checkArr.push($(this).attr("data-cartNo"));
		               
		    $.ajax({
		     url : "/cart/deleteCart",
		     type : "post",
		     data : { chbox : checkArr },
		     success : function(result){
		      if(result == 1) {     
		       location.href = "/cart/cartList";
		      } else {
		       alert("삭제 실패");
		      }
		     }
		    });
		   } 
		  });
		 </script>
		</div>
	   </div>   
	  </li>
	  </c:forEach>
	 </ul>
	</div>
		<div class="mright">
			<div>
				<div class="rorder"><b><i>주문</i> 요약</b></div>
				<div>
					<div class="price1"><b><span class="all">총</span> ￦&nbsp;<fmt:formatNumber pattern="###,###,###" value="${cartTotal.totalPrice}" /></b></div>
						<div class="info1 more1">
							<button type="submit" class="pay_btn">결제하기</button>
						</div>
						</form>
						<div >
							<!-- 카드사진넣는곳 -->
							<img src="">
							<img src="">
							<img src="">
						</div>
						<div class="info1">
							<p>당사 고객 서비스팀에 전화해 지원을 요청하세요</p>
						</div>
						<div class="info1 num">
							<p>02-0000-0000</p>
						</div>
						<div class="info1 time1">
							<p>운영 시간은 월~금 오전 9시~오후 6시입니다</p>
						</div>
					</div>
				</div>
				
				<div class="loww">
					<div class="last1">
						<div class="lastp1">
							<img src="/img/return.png" class="back">
						</div>
						<div>
							<div class="last2">
								<b>배송과 반품</b> 
							</div>
							<div class="last3">
								영업일 기준 1~2일 특급 배송 및 배송 후 14일 이내 반품<br>
								<a href="#" class="gow"><b>자세히 알아보기</b></a>
							</div>
						</div>
					</div>
					<div class="last1">
						<div class="lastp1">
							<img src="/img/packge.png">
						</div>
						<div>
							<div class="last2">
								<b>선물 포장</b>
							</div>
							<div class="last3">
								정성이 가득한 선물 포장을 통해 골든구스만의 특별한<br> 
								경험을 선물하세요<br>
								<a href="#" class="gow"><b>자세히 알아보기</b></a>
							</div>
						</div>
					</div>
				</div>
			</div>
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
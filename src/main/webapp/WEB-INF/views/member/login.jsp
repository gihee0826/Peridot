<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<script src="/resources/js/jquery-3.6.0.min.js"></script>
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
            
        function agreedown(item){
            var value = $(item).val();
            if(value.length >= 1){
                $('#agree').show();
            }else{
                $('#agree').hide();
            }
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
    <script src="/resources/js/media_login.js" defer></script>
    <link rel="stylesheet" href="/css/login.css">
    <script src="/resources/js/media.js" defer></script>
    <link rel="stylesheet" href="/css/footer.css">
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<style>
		.fiexed{
			position:fixed;
			width:100%;
			top:0px;
		}
	</style>
</head>
<body>
<form action="/member/login" method="post">
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
			
			<!-- 오른쪽 메뉴 -->
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
    <br>
    <br>
    
</form>    
    <section>
    <form id="login_form" method="post">
            <div class="left">
                <h2 class="left1"><a href="" class="loginbtn">로그인</a></h2>
                <div class="login_hide">
                    <p class="left2">이미 계정이 있다면 이메일 주소와 비밀번호를 입력하여</p>
                    <p class="left3">Peridot Family로 로그인 하세요.</p>
                    <p class="left4" id="left4">
                        <input type="email" autocomplete="off" onfocus="test3(this)" onblur="test4(this)" required name="userEmail">
                        <label for="user_email"><span>이메일*</span></label>
                    </p>
                    <p class="left5" id="left5">
                        <input type="password" value="" onfocus="test5(this)" onblur="test6(this)" name="userPass">
                        <label for="user_pass"><span>비밀번호*</span></label>
                    </p>
                     <c:if test = "${result == 0 }"> 
		                <div class = "login_warn">이메일 또는 비밀번호를 잘못 입력하셨습니다.</div>
		            </c:if>
                    <p class="left6"><b>비밀번호를 잊어버리셨나요?</b></p>
                    <p class="left7">
                        <input type="checkbox" name="loginIf" value="로그인정보"> 로그인 정보 기억하기
                    </p>
                    <div class="left8">
                        <input type="button" class="left8_i" value="로그인" onclick="test()">
                    </div>
                </div>
            </div>
            <script>
				/* 로그인 버튼 클릭 메서드 */
			    $(".left8_i").click(function(){
			    	/* 로그인 메서드 서버 요청 */
			        $("#login_form").attr("action", "/member/login");
			        $("#login_form").submit();
			        
			    });
			</script>
			</form>
            <div class="right">
                <h2 class="right1"><a href="" class="joinbtn">회원가입</a></h2>
                <div class="join_hide">
                    <div class="right2">
                        <div class="right2_1">
                            <i class="fas fa-bullhorn"></i>
                        </div>
                        <div>
                            <h4 class="right2_2">새 소식 받기</h4>
                            <p class="right2_3">페리도트 패밀리, 독점 콘텐츠, 미리보기와 새 컬렉션에 대한 소식을 받아보시게 됩니다</p>
                        </div>
                    </div>
                    <div class="right3">
                        <div class="right3_1">
                            <i class="fas fa-clipboard-list"></i>
                        </div>
                        <div>
                            <h4 class="right3_2">주문 모니터링</h4>
                            <p class="right3_3">본인 계정에서 주문과 반품 상세 정보 및 상태를 확인하세요</p>
                        </div>
                    </div>
                    <div class="right4">
                        <div class="right4_1">
                            <i class="far fa-credit-card"></i>
                        </div>
                        <div>
                            <h4 class="right4_2">카드 정보 저장</h4>
                            <p class="right4_3">결제 수단과 주소를 저장하세요</p>
                        </div>
                    </div>
                    <div class="right5">
                        <input type="button" onclick="location.href='/member/join'" class="right5_i"value="회원 가입">
                    </div>
                </div>
            </div>
            <script>
				function test3(item){
					$item = $(item);
					$item.next("label").find("span").css({"transform":"translateY(-80%)","font-size":"12px"} );
				}
				function test4(item){
					$item = $(item);
					var value = $item.val();
					if(value == ""){
						$item.next("label").find("span").css({"transform":"inherit","font-size":"inherit"} );
					}
				}

				function test5(item){
					$item = $(item);
					$item.next("label").find("span").css({"transform":"translateY(-200%)","font-size":"12px"} );
				}
				function test6(item){
					$item = $(item);
					var value = $item.val();
					if(value == ""){
						$item.next("label").find("span").css({"transform":"translateY(-120%)","font-size":"12px"} );
					}
				}
			</script>
			
        
    </section>
    <br>
    <br>
    
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
                <p><a href="" class="btn1">고객 관리</a></p>
                <ul class="footbar_menu1">    
                    <li><a href="">Exclusive Services</a></li>
                    <li><a href="">고객 관리</a></li>
                    <li><a href="">배송 및 반품</a></li>
                    <li><a href="">결재 수단</a></li>
                </ul>
            </div>
            <div class="footbar_div2">
                <p><a href="" class="btn2">COOPORATE</a></p>
                <ul class="footbar_menu2">
                    <li><a href="">연락처</a></li>
                    <li><a href="">일반 약관</a></li>
                    <li><a href="">사용 약관</a></li>
                    <li><a href="">개인정보 보호 정책</a></li>
                </ul>
            </div>
            <div class="footbar_div3">
                <p><a href="" class="btn3">GOLDEN WORLD</a></p>
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
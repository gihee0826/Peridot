<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
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
    <title>카드 추가하기</title>
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
	</script>
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<style>
		.fiexed{
			position:fixed;
			width:100%;
		}
	</style>
    <link rel="stylesheet" href="/css/card.css">
    <link rel="stylesheet" href="/css/footer.css">
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
				<div class="lo"><a href="/member/profile"><b>프로필</b></a></div>
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
					<img src="/img/슈퍼스타이미지.png"><a>슈퍼-스타<br></a>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a>볼스타<br></a>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a>대드-스타<br></a>
					<img src="/img/프란시이미지.png" class="shoesimg"><a>프란시<br></a>
					<img src="/img/하이스타이미지.png" class="shoesimg"><a>하이스타<br></a>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a>미드스타<br></a>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a>퓨어스타<br></a>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a>런닝솔<br></a>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a>슬라이드<br></a>
					<img src="/img/스타단이미지.png" class="shoesimg"><a>스타단<br></a>
					<img src="/img/스타터이미지.png" class="shoesimg"><a>스타터<br></a>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a>브이스타<br></a>
					<img src="/img/예이미지.png"><a>Yeah</a>
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
					<img src="/img/슈퍼스타이미지.png"><a>슈퍼-스타<br></a>
					<img src="/img/볼스타이미지.png" class="shoesimg"><a>볼스타<br></a>
					<img src="/img/대드스타이미지.png" class="shoesimg"><a>대드-스타<br></a>
					<img src="/img/프란시이미지.png" class="shoesimg"><a>프란시<br></a>
					<img src="/img/미드스타이미지.png" class="shoesimg"><a>미드스타<br></a>
					<img src="/img/퓨어스타이미지.png" class="shoesimg"><a>퓨어스타<br></a>
					<img src="/img/런닝이미지.png" class="shoesimg"><a>런닝<br></a>
					<img src="/img/런닝솔이미지.png" class="shoesimg"><a>런닝솔<br></a>
					<img src="/img/슬라이드이미지.png" class="shoesimg"><a>슬라이드<br></a>
					<img src="/img/스타단이미지.png" class="shoesimg"><a>스타단<br></a>
					<img src="/img/스타터이미지.png" class="shoesimg"><a>스타터<br></a>
					<img src="/img/브이스타이미지.png" class="shoesimg"><a>브이스타<br></a>
					<img src="/img/예이미지.png"><a>Yeah</a>
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
    <section>
        <form id="card_form" method="post">
            <div class="title">
                <h1><em>신용카드</em></h1>
            </div>
            <div class="box">
                <div class="box1">
                    <h3>ADD NEW CREDIT CARD</h3>
                </div>
                <div class="cardTitle one">
                    <input type="text" class="cardTitle" id="cardTitle" autocomplete="off" onfocus="test(this)" onblur="test2(this)" required name="cardTitle">
                    <label for="cardTitle"><span>Credit Card Title *</span></label>
                </div>
                <span class="titleck">카드이름을 입력해주세요.</span>
                <script>
                    function test(item){
                        $item = $(item);
                        $item.next("label").find("span").css({"transform":"translateY(-80%)","font-size":"12px"} );
                    }
                    function test2(item){
                        $item = $(item);
                        var value = $item.val();
                        if(value == ""){
                            $item.next("label").find("span").css({"transform":"inherit","font-size":"inherit"} );
                        }
                    }
                </script>
                <div class="cardNum one">
                    <input type="text" class="cardNum" id="cardNum"autocomplete="off" onfocus="test(this)" onblur="test2(this)"  required name="cardNum">
                    <label for="cardNum"><span>카드 번호 *</span></label>
                </div>
                <span class="numck">카드번호를 입력해주세요.</span>
                <div class="date">
                    <div class="month one">
                        <select class="sel1 cardMonth" autocomplete="off" required name="cardMonth">
                            <option class="month" value="1">01</option>
                            <option class="month" value="2">02</option>
                            <option class="month" value="3">03</option>
                            <option class="month" value="4">04</option>
                            <option class="month" value="5">05</option>
                            <option class="month" value="6">06</option>
                            <option class="month" value="7">07</option>
                            <option class="month" value="8">08</option>
                            <option class="month" value="9">09</option>
                            <option class="month" value="10">10</option>
                            <option class="month" value="11">11</option>
                            <option class="month" value="12">12</option>
                        </select>
                        <label for="cardMonth"><span>월 *</span></label>
                    </div>
                    <div class="year one">
                        <select class="sel2 cardYear"autocomplete="off" required name="cardYear">
                            <option class="year" value="2021">2021</option>
                            <option class="year" value="2022">2022</option>
                            <option class="year" value="2023">2023</option>
                            <option class="year" value="2024">2024</option>
                            <option class="year" value="2025">2025</option>
                            <option class="year" value="2026">2026</option>
                            <option class="year" value="2027">2027</option>
                            <option class="year" value="2028">2028</option>
                            <option class="year" value="2029">2029</option>
                            <option class="year" value="2030">2030</option>
                        </select>
                        <label for="cardYear"><span>연도 *</span></label>
                    </div>
                </div>
                <div class="cardName one ">
                    <input type="text" class="cardUserName"autocomplete="off" onfocus="test(this)" onblur="test2(this)" required name="cardUserName">
                    <label for="cardName"><span>카드 명의자 이름 *</span></label>
                </div>
                <span class="nameck">카드 명의자를 입력해주세요.</span>
                <div class="cardCode one">
                    <input type="text" class="cardSc"autocomplete="off" onfocus="test(this)" onblur="test2(this)" required name="cardSc">
                    <label for="cardCode"><span>보안코드 *</span></label>
                </div>
                <span class="scck">보안코드를 입력해주세요.</span>
                <div class="save">
                    <input type="button" class="save_" value="저장">
                </div>
            </div>
            <script>
	/* 유효성 검사 통과유무 변수 */
	 var cardTitleCheck = false;            
	 var cardNumCheck = false;	
	 var cardUserNameCheck = false;			
	 var cardScCheck = false;            
	 
	$(document).ready(function(){
		//카드추가 버튼(카드추가 기능 작동)
		$(".save_").click(function(){
			/* 입력값 변수 */
	        var ctitle = $('#cardTitle').val();                 
	        var cnum= $('#cardNum').val();      
	        var cname = $('.cardUserName').val();            
	        var csc = $('.cardSc').val();        
	        
	        
	        if(ctitle == ""){
	        	alert(ctitle);
	            $('.titleck').css('display','block');
	            cardTitleCheck = false;
	        }else{
	            $('.titleck').css('display', 'none');
	            cardTitleCheck = true;
	        }
	        
	        /* 성 유효성 검사 */
	        if(cnum == ""){
	            $('.numck').css('display','block');
	            cardNumCheck = false;
	        }else{
	            $('.numck').css('display', 'none');
	            cardNumCheck = true;
	        }
	        
	        /* 전화번호 유효성 검사 */
	        if(cname == ""){
	            $('.nameck').css('display','block');
	            cardUserNameCheck = false;
	        }else{
	            $('.nameck').css('display', 'none');
	            cardUserNameCheck = true;
	        }
	        
	        /* 이메일 유효성 검사 */
	        if(csc == ""){
	            $('.scck').css('display','block');
	            cardScCheck = false;
	        }else{
	            $('.scck').css('display', 'none');
	            cardScCheck = true;
	        }
	        
	            
	        
	        /* 최종 유효성 검사 */
	        if(cardTitleCheck&&cardNumCheck&&cardUserNameCheck&&cardScCheck){
	        	$("#card_form").attr("action", "/member/card");
	            $("#card_form").submit(); 
	        }
	        
	        return false;
		});
	});
	</script>
	</form>   
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
                <input type="email" class="email" name="email" onkeyup='agreedown(this)'autocomplete="off" onfocus="test3(this)" onblur="test4(this)"required>
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
			function test3(item){
				var $item = $(item);
				/*
				$("footer p input:focus + label span,footer p input:valid + label span").css({ "transform":"translateY(-100%)","font-size":"24px","color":"gray"});
				$("footer p input:focus").css("border-bottom", "1px solid darkgray");
				$("footer p input:focus + label::after,footer p input:valid + label::after").css({"width":"100%","transform":"translateX(0)"});
				*/
				$item.css("border-bottom", "1px solid darkgray");
				$item.next("label").find("span").css({ "transform":"translateY(-100%)","font-size":"24px","color":"gray"});
				$item.next("label::after").css({"width":"100%","transform":"translateX(0)"});
			}
			function test4(item){
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
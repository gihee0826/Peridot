<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<script src="/js/jquery-3.6.0.min.js"></script>
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>	
	<script>
		function dropdownclose(){
			$(".searcharea").hide();
		}
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
		function sideclose(){
			$(".modal").fadeOut();
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
	
	<link rel="stylesheet" href="/css/passchange.css">
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<link rel="stylesheet" href="/css/footer.css">
	<style>
	.fiexed{
		position:fixed;
		width:100%;
		z-index:10;
	}
		body{
		margin:0;
		font-family: 'Gothic A1', sans-serif;
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
			<span class="title"><a href="/"><b>PERIDOT</b></a>&nbsp; / &nbsp;
			<a href="javascript:dropdownWoman();" class="cat"><b>여성</b></a>
			<a href="javascript:dropdownMan();" class="cat"><b>남성</b></a>
			<a href="javascript:dropdownBrand();" class="cat"><b>브랜드 스토리</b></a>
			</span>
			
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
				<div class="lo"><a><b>대시보드</b></a></div>
				<div class="lo"><a><b>프로필</b></a></div>
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
<section>
<form action="/member/pass" method="post" name="fr">
	<div class="big change9">
		<div>
			<div class="title"><b><i>변경</i> 비밀번호</b></div>
			<div class="title1">비밀번호는 최소 8자로 구성되어야 하며 최소1개의 숫자[0-9]
				와 1개의 대문자[A-Z]를 포함해야 합니다
			</div>

			<p class="one">
				<input type="pass" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz">
				<label for="pass"><span>현재 비밀번호*</span></label>
			</p>
			
			<p class="one">
				<input type="pass" autocomplete="off" required class="siz" onfocus="test3(this)" onblur="test4(this)" name="userPass">
				<label for="pass"><span>새 비밀번호*</span></label>
			</p>
			<hr>
			<p class="one">
				<input type="pass" autocomplete="off" required class="siz" onfocus="test3(this)" onblur="test4(this)" name="userPassCheck">
				<label for="passCheck"><span>새 비밀번호 확인*</span></label>
			</p>
			
			</div>
			
			
			<button type="submit" class="last">저장</button>
			<button class="last9">취소</button>
		</div>
	</div>
	</form>
	<div class="big help9">
		<div class="help99">
			<img src="help.PNG" class="img99">
			<div class="needhelp">도움이 필요하십니까?</div>
			<div class="ques">질문이 있으십니까?</div>
			<div class="needhelp1">이메일을 보내주세요</div>
			<div class="ques1">혹은 전화해 주세요</div>
			<div class="needhelp">02-0000-0000</div>
			<div class="ques">운영 시간은 월~금, 오전 9시~오후 6시입니다</div>
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
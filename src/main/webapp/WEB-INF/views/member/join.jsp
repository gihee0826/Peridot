<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<script src="/resources/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
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
    <script src="/resources/js/media.js" defer></script>
	<!--https://fontawesome.com/v5.15/icons/times?style=solid-->
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anon
	ymous"></script>
	<link rel="stylesheet" href="/css/NoLoginHeader.css">
	<link rel="stylesheet" href="/css/join.css">
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
			
			<!-- 오른쪽 메뉴 -->
			<span class="linkarea">
				<a href="javascript:dropdown();" class="search1" >
					검색..&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<img src="/img/검색.png" width="30px" height="30px">
				</a>

				<a href="javascript:mypageShow()" class="mypage">
				<img src="/img/사용자계정.png" width="30px" height="30px">
				</a>
					
				<a href="javascript:modal()" class="cart">
				<img src="/img/장바구니.png" width="30px" height="30px">
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
<section>
<form id="join_form" method="post">
	<div class="big">
		<div class="title"><b><i>회원 가입</i></b></div>
		<div class="title1">계정을 만들고 Peridot Family에 가입하세요!</div>
		<div class="high">
			<div class="up two" >
				<div>
					<a><i class="fas fa-bullhorn"></i></a>
				</div>
				<div>
					<h4>새 소식 받기</h4>
					<div class="add">페리도트 패밀리, 독적 콘텐츠, 미리보기와 새 컬렉션에 대한 새 소식을 받아 보시게 됩니다</div>
				</div>
			</div>
			<div class="two">
				<div>
					<a class="aa"><i class="fas fa-clipboard-list"></i></a>
				</div>
				<div>
					<h4>주문 모니터링</h4>
					<div class="add">본인 계정에서 주문과 상세 정보 및 상태를 확인하세요</div>
				</div>
			</div>
			<div class="two">
				<div>
					<a><i class="fas fa-credit-card"></i></a>
				</div>
				<div>
					<h4>카드 정보 저장</h4>
					<div class="add">결제 수단과 주소를 저장하세요</div>
				</div>
			</div>
		</div>
		<!--정보박스-->
		<p class="one">
			<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz firstName" name="userFirstName">
			<label for="text"><span>이름*</span></label>
		<br>
		</p>
		<span class="final_firstName_ck">이름을 입력해주세요.</span>
		<p class="one">
			<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz lastName"  name="userLastName">
            <label for="text"><span>성*</span></label>
		</p>
		<span class="final_lastName_ck">성을 입력해주세요.</span>
		<div class="dd">
			<div>
				<select class="sel">
					<option class="opt">+82</option>
					<option class="opt">+26</option>
					<option class="opt">+825</option>
					<option class="opt">+119</option>
					<option class="opt">+532</option>
					<option class="opt">+1</option>
					<option class="opt">+10</option>
					<option class="opt">+226</option>
					<option class="opt">+358</option>
					<option class="opt">+246</option>
					<option class="opt">+880</option>
					<option class="opt">+81</option>
				</select name="phone">
			</div>	
			<div>
				<p class="one three">
				<input type="phone" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="jphone phone" name="userPhone">
                <label for="phone"><span>전화번호*</span></label>
				</p>
			</div>
		</div>
		<span class="final_phone_ck">전화번호를 입력해주세요.</span>	
		<p class="one">
			<input type="email" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)"class="siz email" name="userEmail">
            <label for="email"><span>이메일*</span></label>
		</p>
			<span class="email_input_re_1">사용 가능한 이메일입니다.</span>
			<span class="email_input_re_2">이메일이 이미 존재합니다.</span>
			<span class="final_email_ck">이메일을 입력해주세요.</span>
			<sapn class="email_input_warn"></sapn>
		<p class="one">
			<input type="emailCheck" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz emailOk" name="userEmailCheck">
            <label for="emailCheck"><span>이메일 확인*</span></label>
		</p>
		<span class="final_emailOk_ck">이메일을 입력해주세요.</span>
		<span class="emailOk_re_1">이메일이 일치합니다.</span>
        <span class="emailOk_re_2">이메일이 일치하지 않습니다.</span>
		<p class="one">
			<input type="pass" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz pass" name="userPass">
            <label for="pass"><span>비밀번호*</span></label>
		</p>
		<span class="final_pass_ck">비밀번호를 입력해주세요.</span>
		<div class="paw" class="siz">비밀번호 보안</div>
		<hr>
		<p class="one">
			<input type="pass" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" class="siz passOk" name="userPassCheck">
            <label for="passCheck"><span>비밀번호 확인*</span></label>
		</p>
		<span class="final_passOk_ck">비밀번호를 입력해주세요.</span>
		 <span class="passOk_re_1">비밀번호가 일치합니다.</span>
         <span class="passOk_re_2">비밀번호가 일치하지 않습니다.</span>
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
		<!--개인정보동의-->
		<div class="need">
			<div class="minititle">
				개인정보 수집 및 이용에 대한 동의 (필수)<br>
			</div>
			
			수집되는 정보: 이름, 성별, 전화번호, 이메일, 주소, 주문 내역, IP 주소<br>
			수집 및 이용 목적:<br>
			- GGDB가 제공하는 판매 전후의 서비스(배송, 수선)를 포함한 영업 활동(결제, 주문, 배송)과 밀접하게 연관된 목적을 비롯하여 간접적으로 연관된 목적과 판매 계약으로 발생하는 기타 법적 목적(예: 회계, 세금 및 법령에 근거한 보증을 포함하는 법적 의무)
			- 구독 및 고객 계정의 관리<br>
			보관 기간: 상기 목적을 위해 수집된 정보는 관련 법규에 명시된 기간 동안 GG SpA가 보관합니다.<br>
		</div>
		<div class="checkb dd">
			<div><input type="checkbox" name="check" checked></div>
			<div class="detail">위의 내용을 읽고, 상기 목적을 위한 개인 정보의 수집과 이용에 동의합니다.</div>
			<br>
		</div>
		
		<div class="need">
			<div class="minititle">
				개인정보 수집 및 이용에 대한 동의 (선택)<br>
			</div>
			
			수집되는 정보: 이름, 성별, 전화번호, 이메일, 주소, 주문 내역, IP 주소<br>
			수집 및 이용 목적:<br>
			- 마케팅 및 프로모션(우편 등의 기존 방식과 이메일, SMS 또는 인스턴트 메시징 등의 전자적인 방식을 통해 발송된 메시지, 초대, 홍보물 포함)
			정보 보관 기간: 상기 목적을 위해 수집된 정보는 관련 법규에 명시된 기간 동안 GG SpA가 보관합니다<br>
			정보를 제공하지 않을 경우 초대, 정보, 상업적 제안의 수신이 불가능할 수 있으며 고객의 요구에 민감하게 대응하지 못할 수 있지만, 판매 계약 및 관련 서비스에는 영향을 미치지 않습니다.<br>
		</div>
		
		<div class="checkb dd">
			<div><input type="checkbox" name="check" class="incheck"></div>
			<div class="detail">위의 내용을 읽고, 본인은 성인임을 확인하며 이로써 상기 목적을 위한 개인 정보의 수집과 이용에 동의합니다.<br></div>
			
		</div>
		
		<div class="checkb dd">
			<div><input type="checkbox" name="check"></div>
			<div class="detail">개인정보보호 정책 을 읽고, 본인은 성인임을 확인하며 이로써 본인의 습관과 선호도 분석을 위한 개인 정보의 수집과 이용에 동의합니다.<br></div>
		</div>
		
		<div class="need">
			<div class="minititle">
				개인정보 국외 이전에 대한 동의
			</div>
			GG SpA는 고객으로부터 수집한 개인 정보를 계약 및 마케팅 목적으로 이탈리아에 전송할 수 있습니다.
		</div>
		
		<div class="checkb dd">
			<div><input type="checkbox" name="check"></div>
			<div class="detail">위의 내용을 읽고, 본인은 성인임을 확인하며 이로써 본인 개인 정보의 국외 이전에 동의합니다.</div>
		</div>
		
		<div class="need minititle">계정을 생성함으로써 이용 약관에 동의합니다.</div>
		
		
		<input type=button class="join_button last" value="회원가입">
	</div>
	
	<div class="big photo">
		<img src="/img/loginimg.PNG">
	</div>
	<script>
	/* 유효성 검사 통과유무 변수 */
	 var firstNameCheck = false;            // 이름 확인
	 var lastNameCheck = false;            // 성 확인
	 var phoneCheck = false;            // 전화번호 확인
	 var emailCheck = false;			//이메일 확인
	 var emailOkCheck = false;			//이메일 일치 확인
	 var passCheck = false;            // 비번 확인
	 var passOkCheck = false;        // 비번 확인 일치 확인
	 
	$(document).ready(function(){
		//회원가입 버튼(회원가입 기능 작동)
		$(".join_button").click(function(){
			/* 입력값 변수 */
	        var fname = $('.firstName').val();                 // 이름 입력란
	        var lname= $('.lastName').val();                // 성 입력란
	        var phone = $('.phone').val();            // 전화번호 입력란
	        var email = $('.email').val();            // 이메일 입력란
	        var emailok = $('.emailOk').val();            // 이메일 확인 입력란
	        var pass = $('.pass').val();        // 비밀번호 입력란
	        var passok = $('.passOk').val();        // 비밀번호 확인 입력란
	        var warnMsg = $(".mail_input_warn"); 		//이메일 형식 확인
	        
	        /* 이름 유효성검사 */
	        if(fname == ""){
	            $('.final_firstName_ck').css('display','block');
	            firstNameCheck = false;
	        }else{
	            $('.final_firstName_ck').css('display', 'none');
	            firstNameCheck = true;
	        }
	        
	        /* 성 유효성 검사 */
	        if(lname == ""){
	            $('.final_lastName_ck').css('display','block');
	            lastNameCheck = false;
	        }else{
	            $('.final_lastName_ck').css('display', 'none');
	            lastNameCheck = true;
	        }
	        
	        /* 전화번호 유효성 검사 */
	        if(phone == ""){
	            $('.final_phone_ck').css('display','block');
	            phoneCheck = false;
	        }else{
	            $('.final_phone_ck').css('display', 'none');
	            phoneCheck = true;
	        }
	        
	        /* 이메일 유효성 검사 */
	        if(email == ""){
	            $('.final_email_ck').css('display','block');
	            emailCheck = false;
	        }else{
	            $('.final_email_ck').css('display', 'none');
	            emailCheck = true;
	        }
	        
	        /* 이메일 확인 유효성 검사 */
	        if(emailok == ""){
	            $('.final_emailOk_ck').css('display','block');
	            emailOkCheck = false;
	        }else{
	            $('.final_emailOk_ck').css('display', 'none');
	            emailOkCheck = true;
	        }
	        
	        /* 비밀번호 유효성 검사 */
	        if(pass == ""){
	            $('.final_pass_ck').css('display','block');
	            passCheck = false;
	        }else{
	            $('.final_pass_ck').css('display', 'none');
	            passCheck = true;
	        }
	        
	        /* 비밀번호 확인 유효성 검사 */
	        if(passok == ""){
	            $('.final_passOk_ck').css('display','block');
	            passOkCheck = false;
	        }else{
	            $('.final_passOk_ck').css('display', 'none');
	            passOkCheck = true;
	        }
	        //$("#join_form").attr("action", "/member/join");
	        //$("#join_form").submit();
	        
	        /* 이메일 형식 유효성 검사 */
	        if(mailFormCheck(email)){
	            warnMsg.html("이메일이 전송 되었습니다. 이메일을 확인해주세요.");
	            warnMsg.css("display", "none");
	        } else {
	            warnMsg.html("올바르지 못한 이메일 형식입니다.");
	            warnMsg.css("display", "inline-block");
	            return false;
	        }    
	        
	        /* 최종 유효성 검사 */
	        if(firstNameCheck&&lastNameCheck&&phoneCheck&&emailCheck&&emailOkCheck&&passCheck&&passOkCheck){
	        	$("#join_form").attr("action", "/member/join");
	            $("#join_form").submit(); 
	        }
	        
	        return false;
		});
	});
	
	//이메일 중복검사
	$('.email').on("propertychange change keyup paste input", function(){

		console.log("keyup 테스트");	
		
		var memberEmail = $('.email').val();			// .email_input에 입력되는 값
		var data = {memberEmail : memberEmail}				// '컨트롤에 넘길 데이터 이름' : '데이터(.email_input에 입력되는 값)'
		
		$.ajax({
			type : "post",
			url : "/member/memberEmailChk",
			contentType:"application/json",
			success : function(result){
				// console.log("성공 여부" + result);
				if(result != 'fail'){
					$('.email_input_re_1').css("display","inline-block");
					$('.email_input_re_2').css("display", "none");	
					emailCheck = true;
				} else {
					$('.email_input_re_2').css("display","inline-block");
					$('.email_input_re_1').css("display", "none");	
					emailCheck = false;
				}
				
			}// success 종료
		}); // ajax 종료
	});// function 종료
	
	/* 이메일확인 일치 유효성 검사 */
	 
	$('.emailOk').on("propertychange change keyup paste input", function(){
		var email = $('.email').val();
	    var emailOk = $('.emailOk').val();
	    $('.final_emailOk_ck').css('display', 'none');
	 
	    if(email == emailOk){
	        $('.emailOk_re_1').css('display','block');
	        $('.emailOk_re_2').css('display','none');
	        emailOkCheck = true;
	    }else{
	        $('.emailOk_re_1').css('display','none');
	        $('.emailOk_re_2').css('display','block');
	        emailOkCheck = false;
	    }        
	    
	});
	
	/* 비밀번호 확인 일치 유효성 검사 */
	 
	$('.passOk').on("propertychange change keyup paste input", function(){
		var pass = $('.pass').val();
	    var passOk = $('.passOk').val();
	    $('.final_passOk_ck').css('display', 'none');
	 
	    if(pass == passOk){
	        $('.passOk_re_1').css('display','block');
	        $('.passOk_re_2').css('display','none');
	        passOkCheck = true;
	    }else{
	        $('.passOk_re_1').css('display','none');
	        $('.passOk_re_2').css('display','block');
	        passOkCheck = false;
	    }        
	    
	});   

	/* 입력 이메일 형식 유효성 검사 */
	 function mailFormCheck(email){
		 var form = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
		 return form.test(email);
	}
	</script>
	</form>
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
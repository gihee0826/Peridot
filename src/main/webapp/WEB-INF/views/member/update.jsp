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
    <script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="/css/member/NoLoginHeader.css">
    <title>프로필 변경하기</title>
    <script>
        function agreedown(item){
            var value = $(item).val();
            if(value.length >= 1){
                $('#agree').show();
            }else{
                $('#agree').hide();
            }
            
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
    <link rel="stylesheet" href="/css/profile.css">
    <link rel="stylesheet" href="/css/footer.css">
    <style>
		.fiexed{
			position:fixed;
			width:100%;
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
    <form action="/member/update" method="post" name="fr">
        <div class="category">
            <p><b>카테고리</b></p>
        </div>   
        <div>
            <h1 class="title"><em>프로필 변경하기</em></h1>
        </div>
        <div class="box">
            <div class="box1"><b>이름 또는 이메일 주소 변경</b></div>
            <div class="box_gender">
               
  				 	<select class="box_gender1" name="userGender" id="selectBox">
				         <option value="m" >남성</option>
				         <option value="f">여성</option>
				         <option value="n">무응답</option>
				   </select>
            </div>
            <div class="box_name1 one">
                <input type="text" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userFirstName}" name="userFirstName">
                <label for="text"><span>이름*</span></label>
            </div>
            <div class="box_name2 one">
                <input type="text" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userLastName}" name="userLastName">
                <label for="text"><span>성*</span></label>
            </div>
            <div class="box_user one">
                <input type="user" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userName}" name="userName">
                <label for="user"><span>사용자명</span></label>
            </div>
            <div class="box_birth one">
                <input type="birth" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userBirth}" name="userBirth">
                <label for="birth"><span>생년월일*</span></label>
            </div>
            <div class="box_num">
                <div class="box_select">
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
                <div class="box_phone one">
                    <input type="phone" autocomplete="off" onfocus="test1(this)" onblur="test2(this)" required value="${member.userPhone}" name="userPhone">
                    <label for="phone"><span>전화번호*</span></label>
                </div>
            </div>
   			
            <script>
                function test1(item){
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
            <div class="agree1">
                <div class="agree1_1"><b>개인정보 수집 및 이용에 대한 동의(필수)</b></div>
                <div class="agree1_2">
                    수집되는 정보: 이름, 성별, 전화번호, 이메일, 주소, 주문 내역, IP 주소<br>
                    수집 및 이용 목적:<br>
                    - PDDB가 제공하는 판매 전후의 서비스(배송, 수선)를 포함한 영업 활동(결제, 주문, 배송)과 밀접하게 
                    연관된 목적을 비롯하여 간접적으로 연관된 목적과 판매 계약으로 발생하는 기타 법적 목적(예: 회계, 세금 및 법령에 근거한 보증을 
                    포함하는 법적 의무)<br>
                    - 구독 및 고객 계정의 관리<br>
                    보관 기간: 상기 목적을 위해 수집된 정보는 관련 법규에 명시된 기간 동안 GG SpA가 보관합니다.
                </div>
            </div>
            <div class="agree2">
                <input type="checkbox" name="agree1" value="동의여부1" checked><b>위의 내용을 읽고, 상기 목적을 위한
                개인 정보의 수집과 이용에 동의합니다.</b>
            </div>
            
            <div class="agree3">
                <div class="agree3_1"><b>개인정보 수집 및 이용에 대한 동의(선택)</b></div>
                <div class="agree3_2">
                    수집되는 정보: 이름, 성별, 전화번호, 이메일, 주소, 주문 내역, IP주소<br>
                    수집 및 이용 목적: <br>
                    -마케팅 및 프로모션(우편 등의 기존 방식과 이메일, SMS 또는 인스턴스 메시징 등의 
                    전자적인 방식을 통해 발송된 메시지, 초대, 홍보물 포함)<br>
                    정보 처리 기간: 상기 목적을 위해 수집된 정보는 관련 법규에 명시된 기간 동안 GG SpA가 보관합니다<br>
                    정보를 제공하지 않을 경우 초대, 정보, 상업적 제안의 수신이 불가능할 수 있으며 고객의 요구에 
                    민감하게 대응하지 못할 수 있지만, 판매 계약 및 관련 서비스에는 영향을 미치지 않습니다.
                </div>
            </div> 
            <div class="agree4">
                <input type="checkbox" name="agree2" value="동의여부2" checked><b>위의 내용을 읽고, 본인은 성인임을 확인하며 
                    이로써 상기 목적을 위한 개인 정보의 수집과 이용에 동의합니다.</b>
            </div>
            <div class="agree5">
                <div class="agree5_1"><b>개인정보 국외 이전에 대한 동의</b></div>
                <div class="agree5_2">
                    PD SpA는 고객으로부터 수집한 개인 정보를 계약 및 마케팅 목적으로 이탈리아에 전송할 수 있습니다.
                </div>
            </div>
            <div class="agree6">
                <input type="checkbox" name="agree3" value="동의여부3" checked><b>위의 내용을 읽고, 본인은 성인임을 확인하며 이로써 본인 개인 정보의 
                    국외 이전에 동의합니다.
                </b>
            </div>
            <div class="agree7">
                계정을 생성함으로써 <a href="#">이용 약관</a>에 동의합니다.
            </div>
            <div class="btn">
                <div class="btn1">
                    <input type="submit" class="btn1_1"value="저장" >
                </div>
                <div class="btn2">
                    <input type="button" class="btn2_1"value="취소" onclick="location.href='/'">
                </div>
            </div>
            <div class="delete">
                <b>페리도트에서 탈퇴하여 고객님의 데이터가 삭제됩니다. 계정을 삭제하면 
                더 이상 주문 상태 및 내역을 확인할 수 없음을 유의하시기 바랍니다. 이 작업은 
                철회할 수 없습니다.</b>
            </div>
            <div class="return">
                <a href="#">프로필로 돌아가기</a>
            </div>
        </div>
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
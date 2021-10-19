<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<head>
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/slick.css"/>
	
	<script src="jquery-3.6.0.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
  
	<script type="text/javascript" src="/js/slick.min.js"></script>
	<script>
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
			function listdelgo(){
			$(".listdelgo2").fadeIn();
			
		}
		function listdelsideclose2(){
			$(".listdelgo2").fadeOut();
		}
	</script>
	<script src="https://kit.fontawesome.com/57da38e2a5.js" crossorigin="anonymous"></script>	
	<link rel="stylesheet" href="/css/LastPay.css">
</head>
<body>	
<section>
<form action="/cart/order" method="post">
	<div class="predottitle"><b>PERIDOT</b></div>
	<div class="big">	
		<div class="mleft">
			<div class="mleftmargin"> 
			<div class="delititle"><b>1.배송</b></div>
			<div class="deliveryone">
				<div class="deliaddr"><b>배송 주소</b></div>
				<div class="deliinfo"><b>배송 정보를 한글로 입력해주세요</b></div>

				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="reFirstName" >
					<label for="text"><span>이름*</span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="reLastName">
					<label for="text"><span>성*</span></label>
				</div>
				<div class="address_button two" onclick="execution_daum_address()">
						<span class="three">주소찾기</span>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="postNum" class="address_input_post"> 
					<label for="text"><span>우편번호*</span></label>
				</div>
				
				<div class="one" >
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="addr1" readonly="readonly" class="address_input_1">
					<label for="text"><span>주소*</span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="addr2" readonly="readonly" class="address_input_2">
					<label for="text"><span>상세주소*</span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)" name="rePhone">
					<label for="text"><span>전화번호*</span></label>
				</div>
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
				
                /* 다음 주소 연동 */
                function execution_daum_address(){
                	new daum.Postcode({
                        oncomplete: function(data) {
                            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
                        	// 각 주소의 노출 규칙에 따라 주소를 조합한다.
                            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                            var addr = ''; // 주소 변수
                            var extraAddr = ''; // 참고항목 변수
             
                            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                                addr = data.roadAddress;
                            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                                addr = data.jibunAddress;
                            }
             
                            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                            if(data.userSelectedType === 'R'){
                                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                    extraAddr += data.bname;
                                }
                                // 건물명이 있고, 공동주택일 경우 추가한다.
                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                }
                                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                if(extraAddr !== ''){
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                             // 주소변수 문자열과 참고항목 문자열 합치기
                                addr += ' ';
                            
                            } else {
                                document.getElementById("sample6_extraAddress").value = '';
                            }
             
                            // 우편번호와 주소 정보를 해당 필드에 넣는다.
                             $(".address_input_post").val(data.zonecode).next("label").find("span").css({"transform":"translateY(-80%)","font-size":"12px"});
				            //$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
				            $(".address_input_1").val(addr).next("label").find("span").css({"transform":"translateY(-80%)","font-size":"12px"});
				            //$("[name=memberAddr2]").val(addr);            // 대체가능
				            // 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
				            $(".address_input_2").attr("readonly",false);
				             $(".address_input_2").focus(); 
                 
                        }
                    }).open();  
                }
            </script>
				
			</div>
			<div class="delititle"><b>2.결제</b></div>
			<div class="deliverytwo">
				<div class="checkpay"><b>결제 수단을 선택하십시오</b></div>
				<div class="checKpay2">
					결제 방식 및 결제 데이터를 확인하면 데이터를 입력하고 구매를 확인할 수 있는 KCP 페이지로 다시 연결됩니다.
				</div>
				<div class="payimg"><img src="/img/한국사이버결제.PNG"><span>한국사이버결제</span></div>
				<hr>
				<div class="payimg"><img src="/img/디너스클럽.PNG"><input type="radio" name="1" value="" >Diners Club</div>
				<div class="payimg"> <img src="/img/JCB.PNG"><input type="radio" name="1" value="" >JCB</div>
				<div class="payimg"><img src="/img/디스커버리.PNG"><input type="radio" name="1" value="" >Discover</div>
				<div class="payimg"><img src="/img/아메리카익스프레스.PNG"><input type="radio" name="1" value="" >American Express</div>
				<div class="payimg"><img src="/img/마스터카드.PNG"><input type="radio" name="1" value="" >Master Card</div>
				<div class="payimg"><img src="/img/비자.PNG"><input type="radio" name="1" value="" >VISA</div>
				<div class="payimg"><img src="/img/익스프레스페이.PNG"><input type="radio" name="1" value="" >ExpressPay</div>
				<div class="payimg"><img src="/img/마스트리오.PNG"><input type="radio" name="1" value="" >Maestro</div>
				<div class="payimg"><img src="/img/카드결제.PNG"><input type="radio" name="1" value="" >카드결제</div>
				<div class="payimg"><img src="/img/실시간계좌이체.PNG"><input type="radio" name="1" value="" >실시간 계좌이체</div>
				<div class="payimg"><img src="/img/페이코.PNG"><input type="radio" name="1" value="" >페이코</div>
			</div>
			
			<button class="checkbt" type="submit">다음 : 결제하기</button>
			</div>
		</div>
		</form>
		<div class="mright">
			<div>
				<div class="rorder"><b>주문 요약</b></div>
				<div class="checkthelist"><b>쇼핑백에 있는 항목을 확인하십시오</b></div>
				<div>
					<div>
						<b><span class="lastprice1">소계</span> <span class="lastprice11">￦&nbsp;<fmt:formatNumber pattern="###,###,###" value="${cartTotal.totalPrice}" /></b></span>
					</div>
					<div>
						<b><span class="lastprice2">배송비</span><span class="lastprice22">￦&nbsp;0</b></span>
					</div>
					<div class="lastthree">
						<b><span class="lastprice3">총계</span> <span class="lastprice33">￦&nbsp;<fmt:formatNumber pattern="###,###,###" value="${cartTotal.totalPrice}" /></b></span>
					</div>
				</div>
			</div>	
				<div class="loww">
					<div class="last1">
						<div class="lastp1">
							<img src="return.png" class="back">
						</div>
						<div>
							<div class="last2">
								<b>배송</b> 
							</div>
							<div class="last3">
								영업일 기준 1~2일 특급 배송<br>
							</div>
						</div>
					</div>
					<div class="last1">
						<div class="lastp1">
							<img src="/img/반품.png">
						</div>
						<div>
							<div class="last2">
								<b>반품</b>
							</div>
							<div class="last3">
								주문 상품 수령 후 14일 이내에 반품을 요청하실 수 있습니다
							</div>
						</div>
						
					</div>
				</div>
				<div class="needhelpcall">
					<a href="#" class="gowww"><b>도움이 필요하십니까? 전화하세요 <span class="callnumber">+82 00000000</span></b></a>
				</div>	
			</div>
		</div>
	</div>
<!-- 삭제하시겠습니까?????? -->
<div class="listdelgo2">
	<div class="listdelinner2">
	<div class="xxxx">
		<div class="listdelone">
			<b>상품을 삭제하시겠습니까?</b>
		</div>
		<div class="listdelx9">
			<a href="javascript:listdelsideclose2();">
				<i class="fas fa-times"></i>
			</a>
		</div>
	</div>	
		<div class="listdeltwo">
			장바구니에서 상품을 삭제하시겠습니까?
		</div>
		<div class="listdelthree">
			<button class="listdelthreebt"><b>예, 삭제합니다</b></button>
		</div>
		<div class="listdelfour">
			<b>아니요, 그대로 두겠습니다</b>
		</div>
	</div>	
</div>	
</section>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<div class="predottitle"><b>PERIDOT</b></div>
	<div class="big">	
		<div class="mleft">
			<div class="mleftmargin"> 
			<div class="delititle"><b>1.배송</b></div>
			<div class="deliveryone">
				<div class="deliaddr"><b>배송 주소</b></div>
				<div class="deliinfo"><b>배송 정보를 한글로 입력해주세요</b></div>

				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
					<label for="text"><span>이름*</span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
					<label for="text"><span>성*</span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)"> 
					<label for="text"><span>우편번호*</span></label>
				</div>
				<div>
					<div class="one addr">
						<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
						<label for="text"><span>주소*</span></label>
					</div>
					<div>
						<button >주소찾기</button>
					</div>
				</div>
				<div class="one" >
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
					<label for="text"><span></span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
					<label for="text"><span></span></label>
				</div>
				<div class="one">
					<input type="text" autocomplete="off" required onfocus="test3(this)" onblur="test4(this)">
					<label for="text"><span>전화번호*</span></label>
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
				
			</div>
			<div class="delititle"><b>2.결제</b></div>
			<div class="deliveryone">
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
			<div class="deliveryone">
				<div class="payaddr">청구서 주소:</div>
				<div class="deliveryone">
					<div class="lastaddr">
						<img src="/img/동그라미체크.png">
						<div>배송 주소</div>
						<div>민주방</div>
						<div>주소</div>
						<div>상세주소</div>
						<div>대한민국</div>
					</div>
					<p><input type="text"></p>
					<p><input type="text"></p>
				</div>
			</div>
			<button class="checkbt">다음 : 주문 내용 확인</button>
			</div>
		</div>
		<div class="mright">
			<div>
				<div class="rorder"><b>주문 요약</b></div>
				<div class="checkthelist"><b>쇼핑백에 있는 항목을 확인하십시오</b></div>
				<div>
					<div>
						<b><span class="lastprice1">소계</span> <span class="lastprice11">￦&nbsp;0</b></span>
					</div>
					<div>
						<b><span class="lastprice2">배송비</span><span class="lastprice22">￦&nbsp;0</b></span>
					</div>
					<div class="lastthree">
						<b><span class="lastprice3">총계</span> <span class="lastprice33">￦&nbsp;0</b></span>
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
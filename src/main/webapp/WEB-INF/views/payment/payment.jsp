<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>결제 페이지</title>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
		<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
		
		<script>
			function iamport(){
				//가맹점 식별코드
				IMP.init('imp34880640');
				IMP.request_pay({
				    pg : 'kicc',         // pg사
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : '상품1' ,     //결제창에서 보여질 이름
				    amount : 100,        //실제 결제되는 가격
				    buyer_email : 'iamport@siot.do',
				    buyer_name : '구매자',
				    buyer_tel : '010-1234-5678',
				    buyer_addr : '서울 강남구 도곡동',
				    buyer_postcode : '123-456'
				}, function(rsp) {
					console.log(rsp);
					// 결제검증
					$.ajax({
			        	type : "POST",
			        	url : "/verifyIamport/" + rsp.imp_uid 
			        }).done(function(data) {
			        	
			        	console.log(data);
			        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
			        	if(rsp.paid_amount == data.response.amount){
				        	alert("결제 및 결제검증완료");
			        	} else {
			        		alert("결제 실패");
			        	}
			        });
				});
			}
		</script>
		
		
	</head>
	<body>
	
		<!-- 개인정보들을 input으로 받고 스크립트에서 input.val()로 정보들을 가져온뒤
		      iamport() 개인정보 목록에다 입력 -->
		<input type="button" value="결제" onclick="iamport()">
	</body>
</html>
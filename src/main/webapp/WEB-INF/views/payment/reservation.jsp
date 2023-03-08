<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약 페이지</title>
		<script type="text/javascript">
			function reservation(){
									
			}
		</script>
	</head>
	<body>
		
		
		
		
		<c:if test="${sessionScope.loginUser ne null }">
			<input type="button" value="예약하기" onclick="location.href='/payment?userId=${sessionScope.User.userId}'">
		</c:if>
		<c:if test="${sessionScope.loginUser eq null }">
			<input type="button" value="예약하기" onclick="location.href='/payment'">
		</c:if>
		
	</body>
</html>
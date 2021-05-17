<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<jsp:include page="/WEB-INF/views/include/top.jsp" />
	<!-- //top end -->
	
	<div class="wrapAll client">
		<c:if test="${sessionScope.memId != null}">
			<script>
				alert('이용할 수 없는 페이지 입니다.')
				history.go(-1)
			</script>
		</c:if>
		<script>
			alert('회원가입이 완료되었습니다');
			//트레블메이커에서 가입 시 트레블메이커 홈으로
			document.location.href="/portfolio/mem/index.pf";
		</script>
	</div>
	<!-- //wrapAll end -->
	
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<!-- //footer end -->
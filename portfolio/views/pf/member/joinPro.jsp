<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/include/header_pf.jsp" />

	<jsp:include page="/WEB-INF/views/include/top_pf.jsp" />
	<!-- //top_pf end -->
	
	<div class="wrapAll client">
		<c:if test="${sessionScope.memId != null}">
			<script>
				alert('이용할 수 없는 페이지 입니다.')
				history.go(-1)
			</script>
		</c:if>
		<script>
			alert('회원가입이 완료되었습니다');
			//포트폴리오에서 가입 시 포트폴리오 홈으로
			document.location.href="/portfolio/index.pf";
		</script>
	</div>
	<!-- //wrapAll end -->
	
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<!-- //footer end -->
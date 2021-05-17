<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="myMenu">
<ul class="menu">
	<li><a href="/portfolio/mem/userHistory.pf?userId=<c:out value="${param.userId}"/>">여행이력</a></li>
	<li><a href="/portfolio/mem/userComment.pf?userId=<c:out value="${param.userId}"/>">코멘트</a></li>
	<li><a href="/portfolio/mem/userLand.pf?userId=<c:out value="${param.userId}"/>">작성한 랜드마크</a></li>
</ul>
</div>
<script>
	if(nowUrl == "/portfolio/mem/userHistory.pf"){
		$('#myMenu').children('.menu').children('li').eq(0).addClass('active');
	}else if(nowUrl == "/portfolio/mem/userHistoryCont.pf"){
		$('#myMenu').children('.menu').children('li').eq(0).addClass('active');
	}else if(nowUrl == "/portfolio/mem/userComment.pf"){
		$('#myMenu').children('.menu').children('li').eq(1).addClass('active');
	}else if(nowUrl == "/portfolio/mem/userLand.pf"){
		$('#myMenu').children('.menu').children('li').eq(2).addClass('active');
	}
</script>

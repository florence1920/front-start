<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="ham">
	<span class="bar1"></span>
	<span class="bar2"></span>
	<span class="bar3"></span>
</div>
<jsp:include page="/WEB-INF/views/include/clientMenu.jsp" />
<div id="mCover"></div>
<a href="/portfolio/mem/index.pf"><p id="logo">Travel Maker</p></a>
<div id="sign">
	<c:if test="${sessionScope.memId == null}">
		<a href="/portfolio/mem/signupForm.pf">회원가입</a>
		<a href="/portfolio/mem/loginForm.pf">로그인</a>
	</c:if>
	<c:if test="${sessionScope.memId != null}">
		<a href="/portfolio/mem/logout.pf">로그아웃</a>
	</c:if>
</div>
<script>	
	$("#ham").click(function(){
	    $(this).toggleClass("active");
	    $('#logo').fadeToggle();
	    $('#sign').fadeToggle();
	    $('.searchBar').fadeToggle();
	    $('#clientMenuWrap').fadeToggle();
	    $('#mCover').fadeToggle();
	});
	var nowUrl = window.location.pathname;
	if(nowUrl == "/portfolio/mem/index.pf"){
		$('#clientMenuWrap').children('.menu').children('li').eq(0).addClass('on');
	}else if(nowUrl == "/portfolio/my/myPage.pf" || "/portfolio/cmt/comment.pf" || "/portfolio/qr/myQnaReportList.pf"){
		$('#clientMenuWrap').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/travel/makingList.pf" || "/portfolio/travel/makingWrite.pf" ){ 	
		$('#clientMenuWrap').children('.menu').children('li').eq(2).addClass('on');
	}else if(nowUrl == "/portfolio/travel/sharedList.pf"){
		$('#clientMenuWrap').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/land/landmark.pf" || "/portfolio/land/landWrite.pf"){
		$('#clientMenuWrap').children('.menu').children('li').eq(4).addClass('on');
	}else if(nowUrl == "/portfolio/travel/makingWrite.pf"){
		$('#clientMenuWrap').children('.menu').children('li').eq(2).addClass('on');
	}	
</script>
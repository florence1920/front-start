<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="divView" style="position:absolute; display:none; background-color:#ffffff; border:solid 2px #d0d0d0; width:150px; height:50px; padding: 5px 15px 0;"></div>

<div id="top" class="black">
	<div id="ham">
		<span class="bar1"></span>
		<span class="bar2"></span>
		<span class="bar3"></span>
	</div>
	<jsp:include page="/WEB-INF/views/include/clientMenu_pf.jsp" />
	<div id="mCover"></div>
	<a href="/portfolio/index.pf"><p id="logo"></p></a>
	<div id="sign">
		<c:if test="${sessionScope.memId == null}">
			<a href="/portfolio/join.pf"><p class="btnSign">회원가입</p></a>
			<a href="/portfolio/login.pf"><p class="btnSign">로그인</p></a>
		</c:if>
		<c:if test="${sessionScope.memId != null}">
			<p class="txtSign">환영합니다! <strong>${sessionScope.memId}</strong>님</p>
			<a href="/portfolio/logout.pf"><p class="btnSign">로그아웃</p></a>
		</c:if>
	</div>
</div>
<script>
	var didScroll;
	var lastScrollTop = 0;
	var delta = 5;
	var navbarHeight = $('#top').outerHeight();
	
	$(window).scroll(function(event){
		didScroll = true;
	});
	
	setInterval(function() {
		if (didScroll) {
			hasScrolled();
			didScroll = false;
		}
	}, 250);
	
	function hasScrolled() {
		var st = $(this).scrollTop();
		if(Math.abs(lastScrollTop - st) <= delta)
			return;
		if(st > lastScrollTop && st > navbarHeight){
			$('#top').removeClass('nav-down').addClass('nav-up');
		}else {
			if(st + $(window).height() < $(document).height()) {
				$('#top').removeClass('nav-up').addClass('nav-down');
			}
		}
		
		lastScrollTop = st;
	}
	
	$("#ham").click(function(){
	    $(this).toggleClass("active");
	    $('#logo').fadeToggle();
	    $('#sign').fadeToggle();
	    $('#clientMenuWrap_pf').fadeToggle();
	    $('#mCover').fadeToggle();
	});
	var nowUrl = window.location.pathname;
	if(nowUrl == "/portfolio/index.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(0).addClass('on');
	}else if(nowUrl == "/portfolio/game/home.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/game/1to50.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');	
	}else if(nowUrl == "/portfolio/game/card.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/game/lottery.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');	
	}else if(nowUrl == "/portfolio/game/numUpDown.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');	
	}else if(nowUrl == "/portfolio/game/purchase.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/game/randomPick.pf"){ 	
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');		
	}else if(nowUrl == "/portfolio/game/rockPS.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/project/tmEx.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(2).addClass('on');
	}else if(nowUrl == "/portfolio/profile/team.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/profile/lsm.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/profile/jbr.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/profile/lsh.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/profile/hys.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/mem/index.pf"){
		$('#clientMenuWrap_pf').children('.menu').children('li').eq(4).addClass('on');
	}
</script>
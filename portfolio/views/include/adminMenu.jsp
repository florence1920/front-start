<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<div id="adminMenuWrap">
	<a href="/portfolio/admin/member.pf"><p class="logo">Travel Maker</p></a>
	<ul class="menu">
        <li><a href="/portfolio/admin/member.pf">회원관리</a></li>
        <li><a href="/portfolio/admin/adminGroup.pf">그룹관리</a></li>
     <!--  <li><a href="/portfolio/admin/qna.pf">문의관리</a></li> -->
    <!-- <li><a href="/portfolio/admin/report.pf">신고관리</a></li> -->   
    <!-- <li><a href="/portfolio/admin/reason.pf">신고사유/문의유형</a></li> -->  
        <li><a href="/portfolio/admin/rkPos.pf">랭크</a></li>
        <li><a href="/portfolio/admin/posList.pf">포지션</a></li>
        <li><a href="/portfolio/mem/index.pf">메인 홈</a></li>        
    </ul>
</div>
<script>
	var nowUrl = window.location.pathname;
	console.log(nowUrl)
	if(nowUrl == "/portfolio/admin/member.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(0).addClass('on');
	}else if(nowUrl == "/portfolio/admin/memberModiForm.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(0).addClass('on');
	}else if(nowUrl == "/portfolio/admin/adminGroup.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(1).addClass('on');
	}else if(nowUrl == "/portfolio/admin/rkPos.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(2).addClass('on');
	}else if(nowUrl == "/portfolio/admin/modifyFormRk.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(2).addClass('on');
	}else if(nowUrl == "/portfolio/admin/posList.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/admin/modifyFormPos.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(3).addClass('on');
	}
	
</script>





	
	<%-- 
	else if(nowUrl == "/portfolio/admin/report.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(3).addClass('on');
	}else if(nowUrl == "/portfolio/admin/reason.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(4).addClass('on');
	}else if(nowUrl == "/portfolio/admin/reasonInsert.pf"){
		$('#adminMenuWrap').children('.menu').children('li').eq(4).addClass('on');
	}
	--%>
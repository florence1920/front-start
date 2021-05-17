<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<div id="myMenu">
            <ul class="menu">
                <li><a class="active" href="/portfolio/my/myPage.pf">마이홈</a></li>
                <li><a href="/portfolio/my/myHistory.pf">여행이력</a></li>
                <li><a href="/portfolio/cmt/comment.pf" >코멘트 관리</a></li>
                <li><a href="/portfolio/my/myLand.pf">나의 랜드마크</a></li>
                <li><a href="/portfolio/mem/myModi.pf" >내정보 관리</a></li>
            </ul>
        </div>
        <script>
	        var nowUrl = window.location.pathname;
	    	console.log(nowUrl)
            if(nowUrl == "/portfolio/my/myPage.pf"){
                $('#myMenu').children('.menu').children('li').eq(0).addClass('active');
            }else if(nowUrl == "/portfolio/my/myHistory.pf"){
                $('#myMenu').children('.menu').children('li').eq(1).addClass('active');
            }else if(nowUrl == "/portfolio/my/myHistoryCont.pf"){
                $('#myMenu').children('.menu').children('li').eq(1).addClass('active');
            }else if(nowUrl == "/portfolio/cmt/comment.pf"){
                $('#myMenu').children('.menu').children('li').eq(2).addClass('active');
            }else if(nowUrl == "/portfolio/my/myLand.pf"){
                $('#myMenu').children('.menu').children('li').eq(3).addClass('active');
            }else if(nowUrl == "/portfolio/mem/myModi.pf"){
                $('#myMenu').children('.menu').children('li').eq(4).addClass('active');
            }
        </script>




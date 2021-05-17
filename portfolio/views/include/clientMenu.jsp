<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="clientMenuWrap">
	<ul class="menu">
        <li><a href="/portfolio/mem/index.pf">홈</a></li>
        <li><a href="/portfolio/my/myPage.pf">내정보</a></li>
        <li><a href="/portfolio/travel/makingList.pf">여행떠나기</a></li>
        <li><a href="/portfolio/shared/sharedList.pf">여행공유</a></li>
        <li><a href="/portfolio/land/landmark.pf">랜드마크</a></li>
        <li><a href="/portfolio/mem/manual.pf">랭크/포지션 안내</a></li>
        <li><a href="/portfolio/msg/message.pf">쪽지함</a></li>
        <c:if test="${sessionScope.memId == 'admin'}">
        	<li><a href="/portfolio/admin/member.pf">관리자 페이지</a></li>
        </c:if>	
    </ul>
</div>


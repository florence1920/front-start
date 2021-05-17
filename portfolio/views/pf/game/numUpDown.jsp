<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/include/header_pf.jsp" />

	<jsp:include page="/WEB-INF/views/include/top_pf.jsp" />
	<!-- //top_pf end -->
	
		<div class="wrapAll client">
		
			<script>
			function check(){
				var inputs = document.inputForm;
				if(!inputs.guess.value){
					alert("숫자를 입력해주세요");
					return false;
				}else if(inputs.guess.value>25){
					alert("25 이하의 숫자를 입력해주세요");
					return false;
				}else if(inputs.guess.value<1){
					alert("1 이상의 숫자를 입력해주세요");
					return false;
				}
			}
			
			$(document).ready(function(){
				$('#guessForm').submit(function(event){
					event.preventDefault();
					var data = {};
					$.each($(this).serializeArray(), function(index, i){
						data[i.name] = i.value;
					});
					
					$.ajax({
						url: "/portfolio/game/updownGuess.pf",
						cache: false,
						type: "POST",
						dataType: "json",
						contentType: "application/json",
						data: JSON.stringify(data),
						success: function(res){
							$('#chance').val(res.chance);
							$('#start').val(res.start);
							$('#end').val(res.end);
							res_input = res.input;
							res_result = res.result;
							if(res.result==0){
							$('.cls').html("<h1>LOSE:( 정답은 "+${answer}+"이었습니다</h1>");
							}else if(res.result==1){
							$('.cls').html("<h1>WIN:) 정답은 "+${answer}+"이었습니다</h1>");
							}else if(res.result==-1){
								if(res.input > ${answer}){
									$('.cls').html("<h1>DOWN</h1>");
								}else if(res.input < ${answer}){
									$('.cls').html("<h1>UP</h1>");
								}
							}
						}
					});
				});
			});
			</script>
			<h1>${user}</h1>
			<h1>1에서 25 사이의 숫자를 입력하세요</h1>
	
			<div class="cls"></div>
			
			<h2 style="color:#fff;">정답:${answer}</h2>
			<form id="guessForm" name="inputForm" onsubmit="return check()" method="post">
				남은 기회: <input type="text" name="chance" id="chance" value="3"/><br/>
				<input type="text" name="start" id="start" value="1"/> ~ <input type="text" name="end" id="end" value="25"/> 사이의 숫자 입력<br/>
				<input type="number" min="1" max="25" name="guess"/>
				<input type="submit" value="guess &#33;"/>
			</form>
		
		</div>
		<!-- //wrapAll end -->
		
<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<!-- //footer end -->
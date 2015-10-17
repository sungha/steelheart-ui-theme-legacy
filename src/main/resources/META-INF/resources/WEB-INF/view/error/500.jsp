<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String agent = request.getHeader("user-agent");
	if (agent != null && agent.contains("MSIE")) {
		response.setStatus(200);
	}
%>





<div class="container-xs-height full-height">
	<div class="row-xs-height">
		<div class="col-xs-height col-middle">
			<div class="error-container text-center">
				<h1 class="error-number">500</h1>
				<h1 class="error-number">내부 에러가 발생했습니다. 문제가 지속되면 관리자에게 문의하십시오</h1>
				<h2 class="semi-bold">${exception}</h2>
			</div>
		</div>
	</div>
</div>



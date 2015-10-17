<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%
	String agent = request.getHeader("user-agent");
	if (agent != null && agent.contains("MSIE")) {
		response.setStatus(200);
	}
%>


<div id="message-box">

	<div class="container-xs-height full-height">
		<div class="row-xs-height">
			<div class="col-xs-height col-middle">
				<div class="error-container text-center">
					<h1 class="error-number">404</h1>
					<h2 class="semi-bold">We are sorry but the page you are looking for was not found..</h2>
				</div>
			</div>
		</div>
	</div>
	
</div>

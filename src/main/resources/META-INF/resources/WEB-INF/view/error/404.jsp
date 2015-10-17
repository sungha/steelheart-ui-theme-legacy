<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div id="message-box" style="background-color:rgba(0,0,0,.25); padding:24px;">

	<div class="container-xs-height full-height">
		<div class="row-xs-height">
			<div class="col-xs-height col-middle">
				<div class="error-container text-center">
					<h1 class="error-number">404</h1>
					<h2 class="semi-bold"><fmt:message key="exception.404.title" /></h2>

					<div class="row">
						<div class="col-xs-6">
							<a class="btn btn-sm btn-primary btn-block" href="javascript://" onclick="history.back();"><i class="fa fa-fw fa-arrow-left"></i><fmt:message key="go.back" /></a>
						</div>
						<div class="col-xs-6">
							<a class="btn btn-sm btn-danger btn-block" href="${cl}"><fmt:message key="go.home" /> <i class="fa fa-fw fa-arrow-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="form-group">
	    <label><fmt:message key="error.404.search" /></label>
	    <div class="input-group">
	        <input class="form-control" type="text" placeholder="<fmt:message key="enter.keyword" />">
	        <div class="input-group-btn">
	            <button class="btn btn-primary"><i class="fa fa-fw fa-search"></i></button>
	        </div>
	    </div>
	</div>

</div>

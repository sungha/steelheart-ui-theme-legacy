<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div class="jumbotron">
	<ol class="breadcrumb pull-right">
		<li><a href="${cl}"><i class="fa fa-home"></i> Home</a></li>
	</ol>
	<h1>Dashboard</h1>
	<small>dashboard</small>
</div>


<ul>
	<li><a href="${ctx}/${lang}/theme/ugly/index">ugly</a></li>
	<li><a href="${ctx}/${lang}/theme/default/index">default</a></li>
</ul>


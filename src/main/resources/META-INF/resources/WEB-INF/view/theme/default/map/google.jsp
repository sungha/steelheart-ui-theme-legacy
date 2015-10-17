<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<ol class="breadcrumb">
	<li><a href="${ctx}/${lang}/"><i class="fa fa-home"></i> Home</a></li>
	<li><a href="${ctx}/${lang}/theme/index">Theme</a></li>
	<li><a href="${ctx}/${lang}/theme/${theme}/index">${theme}</a></li>
	<li>map</li>
	<li class="active"><a href="${ctx}/${lang}/theme/${theme}/map/google">google</a></li>
</ol>



<div id="map" style="width:100%; height:400px;"></div>




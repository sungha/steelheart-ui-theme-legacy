<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


<div class="jumbotron">
	<ol class="breadcrumb pull-right">
		<li><a href="${cl}/theme/index"><i class="fa fa-home"></i> Themes</a></li>
		<li><a href="${cl}/theme/default/index"><i class="fa fa-home"></i> Default</a></li>
		<li><a href="${cl}/theme/default/table"><i class="fa fa-home"></i> Table</a></li>
		<li><a href="${cl}/theme/default/table/datatable"><i class="fa fa-home"></i> Datatable</a></li>
		<li><a href="${cl}/theme/default/table/datatable/sample1"><i class="fa fa-home"></i> Sample #1</a></li>
	</ol>
	<h1>Dashboard</h1>
	<small>dashboard</small>
</div>


<div class="panel panel-success">
	<div class="panel-heading">Sample #1</div>
	<table id="table1" class="table table-success" style="width:100%;">
		<jsp:include page="data.jsp" />
	</table>
</div>





<div class="panel panel-default">
	<div class="panel-heading">Sample #2</div>
	<table id="table2" class="table table-striped table-border table-hover">
	   <thead>
	        <tr>
	            <th>ID</th>
	            <th>First name</th>
	            <th>Last name</th>
	            <th>ZIP / Post code</th>
	            <th>Country</th>
	        </tr>
	    </thead>
	</table>
</div>




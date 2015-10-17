<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="jumbotron">
	<ol class="breadcrumb pull-right">
		<li><a href="${cl}"><i class="fa fa-home"></i> Home</a></li>
	</ol>
	<h1>Dashboard</h1>
	<small>dashboard</small>
</div>


<c:forTokens var="color" items="${brands}" delims=",">
	<div class="panel panel-${color}">
		<div class="panel-heading">
			<h4 class="panel-title">Basic Styling: ${color}</h4>
		</div>
		<div class="panel-body">
			<div class="table-responsive">
				<table class="table table-${color}">
					<thead>
						<tr>
							<th class="text-center">
								<input type="checkbox" />
							</th>
							<th>Name</th>
							<th>Position</th>
							<th>Office</th>
							<th class="text-center">Age</th>
							<th class="text-right">Start date</th>
							<th class="text-right">Salary</th>
						</tr>
					</thead>
					<tbody>
						<tr class="">
							<td class="text-center">
								<input type="checkbox" />
							</td>
							<td>Tiger Nixon</td>
							<td>System Architect</td>
							<td>Edinburgh</td>
							<td class="text-center">61</td>
							<td class="text-right">2011/04/25</td>
							<td class="text-right">$320,800</td>
						</tr>
						<tr>
							<td class="text-center">
								<input type="checkbox" />
							</td>
							<td>Garrett Winters</td>
							<td>Accountant</td>
							<td>Tokyo</td>
							<td class="text-center">63</td>
							<td class="text-right">2011/07/25</td>
							<td class="text-right">$170,750</td>
						</tr>
						<tr>
							<td class="text-center">
								<input type="checkbox" />
							</td>
							<td>Ashton Cox</td>
							<td>Junior Technical Author</td>
							<td>San Francisco</td>
							<td class="text-center">66</td>
							<td class="text-right">2009/01/12</td>
							<td class="text-right">$86,000</td>
						</tr>
						<tr>
							<td class="text-center">
								<input type="checkbox" />
							</td>
							<td>Cedric Kelly</td>
							<td>Senior Javascript Developer</td>
							<td>Edinburgh</td>
							<td class="text-center">22</td>
							<td class="text-right">2012/03/29</td>
							<td class="text-right">$433,060</td>
						</tr>
						<tr>
							<td class="text-center">
									<input type="checkbox" />
							</td>
							<td>Airi Satou</td>
							<td>Accountant</td>
							<td>Tokyo</td>
							<td class="text-center">33</td>
							<td class="text-right">2008/11/28</td>
							<td class="text-right">$162,700</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</c:forTokens>



<div class="panel panel-default">
	<div class="panel-heading">Normal Table</div>
	<table class="table">
		<jsp:include page="thead.jsp" />
		<jsp:include page="tbody.jsp" />
	</table>
</div>

<div class="panel panel-default">
	<div class="panel-heading">Bordered</div>
	<table class="table table-bordered">
		<jsp:include page="thead.jsp" />
		<jsp:include page="tbody.jsp" />
	</table>
</div>


<div class="panel panel-default">
	<div class="panel-heading">Striped, Hover</div>
	<table class="table table-striped table-hover">
		<jsp:include page="thead.jsp" />
		<jsp:include page="tbody.jsp" />
	</table>
</div>


<div class="panel panel-default">
	<div class="panel-heading">Condensed, Striped, Hover</div>
	<table class="table table-condensed table-striped table-hover">
		<jsp:include page="thead.jsp" />
		<jsp:include page="tbody.jsp" />
	</table>
</div>


<table
	class="table table-condensed table-striped table-hover table-default">
	<jsp:include page="thead.jsp" />
	<jsp:include page="tbody.jsp" />
</table>



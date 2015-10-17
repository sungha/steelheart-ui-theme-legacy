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


<hr/>

<div class="panel panel-default">
	<div class="panel-heading">Buttons</div>
	<div class="panel-body">

		<h3><strong>NORMAL SIZE</strong></h3>

		<button class="btn">white</button>
		<c:forTokens var="brand" items="${brands}" delims=",">
			<button class="btn btn-${brand}">${brand}</button>
		</c:forTokens>
		<button class="btn btn-link">link</button>

		<h3><strong>SMALL SIZE</strong></h3>

		<button class="btn btn-sm">white</button>
		<button class="btn btn-sm btn-default">default</button>
		<button class="btn btn-sm btn-primary">primary</button>
		<button class="btn btn-sm btn-info">info</button>
		<button class="btn btn-sm btn-warning">warning</button>
		<button class="btn btn-sm btn-danger">danger</button>
		<button class="btn btn-sm btn-success">success</button>
		<button class="btn btn-sm btn-link">link</button>

		<h3><strong>X-SMALL SIZE</strong></h3>

		<button class="btn btn-xs">white</button>
		<button class="btn btn-xs btn-default">default</button>
		<button class="btn btn-xs btn-primary">primary</button>
		<button class="btn btn-xs btn-info">info</button>
		<button class="btn btn-xs btn-warning">warning</button>
		<button class="btn btn-xs btn-danger">danger</button>
		<button class="btn btn-xs btn-success">success</button>
		<button class="btn btn-xs btn-link">link</button>

		<h3><strong>DISABLED</strong></h3>

		<button class="btn btn-sm" disabled="disabled">white</button>
		<button class="btn btn-sm btn-default" disabled="disabled">default</button>
		<button class="btn btn-sm btn-primary" disabled="disabled">primary</button>
		<button class="btn btn-sm btn-info" disabled="disabled">info</button>
		<button class="btn btn-sm btn-warning" disabled="disabled">warning</button>
		<button class="btn btn-sm btn-danger" disabled="disabled">danger</button>
		<button class="btn btn-sm btn-success" disabled="disabled">success</button>
		<button class="btn btn-sm btn-link" disabled="disabled">link</button>

		<h3><strong>SQUARE</strong></h3>

		<button class="btn btn-square">white</button>
		<button class="btn btn-square btn-default">default</button>
		<button class="btn btn-square btn-primary">primary</button>
		<button class="btn btn-square btn-info">info</button>
		<button class="btn btn-square btn-warning">warning</button>
		<button class="btn btn-square btn-danger">danger</button>
		<button class="btn btn-square btn-success">success</button>
		<button class="btn btn-square btn-link">link</button>

		<h3><strong>ROUNDED</strong></h3>

		<button class="btn btn-rounded">white</button>
		<button class="btn btn-rounded btn-default">default</button>
		<button class="btn btn-rounded btn-primary">primary</button>
		<button class="btn btn-rounded btn-info">info</button>
		<button class="btn btn-rounded btn-warning">warning</button>
		<button class="btn btn-rounded btn-danger">danger</button>
		<button class="btn btn-rounded btn-success">success</button>
		<button class="btn btn-rounded btn-link">link</button>

		<h3><strong>OUTLINED</strong></h3>

		<button class="btn btn-outlined">white</button>
		<button class="btn btn-outlined btn-default">default</button>
		<button class="btn btn-outlined btn-primary">primary</button>
		<button class="btn btn-outlined btn-info">info</button>
		<button class="btn btn-outlined btn-warning">warning</button>
		<button class="btn btn-outlined btn-danger">danger</button>
		<button class="btn btn-outlined btn-success">success</button>
		<button class="btn btn-outlined btn-link">link</button>

		<h3><strong>EMBOSSED</strong></h3>

		<button class="btn btn-embossed">white</button>
		<button class="btn btn-embossed btn-default">default</button>
		<button class="btn btn-embossed btn-primary">primary</button>
		<button class="btn btn-embossed btn-info">info</button>
		<button class="btn btn-embossed btn-warning">warning</button>
		<button class="btn btn-embossed btn-danger">danger</button>
		<button class="btn btn-embossed btn-success">success</button>
		<button class="btn btn-embossed btn-link">link</button>

		<h3><strong>BUTTON GROUP</strong></h3>

		<div class="btn-group btn-group-sm">
			<button class="btn">white</button>
			<button class="btn btn-default">default</button>
			<button class="btn btn-primary">primary</button>
			<button class="btn btn-info">info</button>
			<button class="btn btn-warning">warning</button>
			<button class="btn btn-danger">danger</button>
			<button class="btn btn-success">success</button>
		</div>



	</div>
</div>




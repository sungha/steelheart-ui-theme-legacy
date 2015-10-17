<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>






<c:set var="link" value="${ctx}/${lang}/theme/default" />




<nav id="sidebar">


	<ul id="sidemenu" class="nav nav-stacked">
		<li class="panel">
			<a href="${link}/index">
				<i class="fa fa-fw fa-lg fa-home"></i> Theme Home
			</a>
		</li>
		<li class="panel">
			<a href="#sidemenu-calendar" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-calendar"></i> Calendar
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-calendar" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/calendar/sample1">Full Calendar</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-chart" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-bar-chart-o"></i> Chart
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-chart" class="nav nav-stacked collapse ${view.startsWith('/theme/chart') ? 'in' : ''}">
				<li>
					<a href="#sidemenu-chart-chartjs" data-toggle="collapse" data-parent="#sidemenu-chart">chart.js <i class="pull-right fa fa-chevron-circle-right"></i></a>
					<ul id="sidemenu-chart-chartjs" class="nav nav-stacked collapse ${view.startsWith('/theme/chart/chartjs') ? 'in' : ''}">
						<li>
							<a href="${link}/chart/chartjs/bar">Bar Chart</a>
						</li>
						<li>
							<a href="${link}/chart/chartjs/line">Line Chart</a>
						</li>
						<li>
							<a href="${link}/chart/chartjs/pie">Pie/Doughnut Chart</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-editor" data-toggle="collapse" data-parent="#sidemenu">Editor <i class="pull-right fa fa-chevron-circle-right"></i></a>
			<ul id="sidemenu-editor" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/editor/summernote/sample1">Sample #1</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-element" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-cogs"></i> Element
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-element" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/element/button">Buttons</a>
				</li>
				<li>
					<a href="#">M32</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-form" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-tasks"></i> Form
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-form" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/form/element">Element</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-icon" data-toggle="collapse" data-parent="#sidemenu">
				Icon
				<span class="badge pull-right">2</span>
			</a>
			<ul id="sidemenu-icon" class="nav nav-stacked collapse ${view.startsWith('/theme/icon') ? 'in' : ''}">
				<li>
					<a href="${link}/icon/font-awesome">Font Awesome</a>
				</li>
				<li>
					<a href="${link}/icon/typeicons">typeicon</a>
				</li>
				<li>
					<a href="${link}/icon/weather-icon">Weather Icon</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-map" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-map-marker"></i> Map
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-map" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/map/google">Google Map</a>
				</li>
				<li>
					<a href="${link}/map/naver">Naver Map</a>
				</li>
				<li>
					<a href="${link}/map/daum">Daum Map</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-table" data-toggle="collapse" data-parent="#sidemenu">
				<i class="fa fa-fw fa-lg fa-th-list"></i> Table
				<i class="pull-right fa fa-chevron-circle-right"></i>
			</a>
			<ul id="sidemenu-table" class="nav nav-stacked collapse ${view.startsWith('/theme/table') ? 'in' : ''}">
				<li>
					<a href="${link}/table/sticky">Sticky Table Header</a>
				</li>
				<li>
					<a href="#sidemenu-table-bootstrap" data-toggle="collapse" data-parent="#sidemenu-table">Bootstrap <i class="pull-right fa fa-chevron-circle-right"></i></a>
					<ul id="sidemenu-table-bootstrap" class="nav nav-stacked collapse ${view.startsWith('/theme/table/bootstrap') ? 'in' : ''}">
						<li>
							<a href="${link}/table/bootstrap/sample1">Sample 1</a>
						</li>
					</ul>
				</li>
				<li>
					<a href="#sidemenu-table-datatable" data-toggle="collapse" data-parent="#sidemenu-table">DataTable <i class="pull-right fa fa-chevron-circle-right"></i></a>
					<ul id="sidemenu-table-datatable" class="nav nav-stacked collapse ${view.startsWith('/theme/table/datatable') ? 'in' : ''}">
						<li>
							<a href="${link}/table/datatable/sample1">Sample 1</a>
						</li>
						<li>
							<a href="${link}/table/datatable/sample2">Sample 2</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-tree" data-toggle="collapse" data-parent="#sidemenu">Tree <i class="pull-right fa fa-chevron-circle-right"></i></a>
			<ul id="sidemenu-tree" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/tree/fancytree">Fancy Tree</a>
				</li>
			</ul>
		</li>
		<li class="panel">
			<a href="#sidemenu-typography" data-toggle="collapse" data-parent="#sidemenu">Typography <i class="pull-right fa fa-chevron-circle-right"></i></a>
			<ul id="sidemenu-typography" class="nav nav-stacked collapse">
				<li>
					<a href="${link}/typography/basic">Basic</a>
				</li>
			</ul>
		</li>

	</ul>

</nav>


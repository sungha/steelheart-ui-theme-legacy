<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>


fancytree


<div id="tree1">
	<ul style="display: none;">
		<li id="1">Node 1
		<li id="2" class="folder">Folder 2
		<ul>
			<li id="3">Node 2.1
			<li id="4">Node 2.2
		</ul>
	</ul>
</div>



<table id="tree2" class="table table-condensed table-bordered table-striped table-hover">
<thead>
<tr>
<th>1</th>
<th>2</th>
</tr>
</thead>
<tbody>
<c:forEach begin="1" end="10">
<tr>
<td>111</td>
<td>222</td>
</tr>
</c:forEach>
</tbody>
</table>
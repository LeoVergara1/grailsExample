
<%@ page import="com.makingdevs.Address" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-address" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calle" title="${message(code: 'address.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="colonia" title="${message(code: 'address.colonia.label', default: 'Colonia')}" />
					
						<g:sortableColumn property="numeroExterior" title="${message(code: 'address.numeroExterior.label', default: 'Numero Exterior')}" />
					
						<g:sortableColumn property="numeroIxterior" title="${message(code: 'address.numeroIxterior.label', default: 'Numero Ixterior')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${addressInstanceList}" status="i" var="addressInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${addressInstance.id}">${fieldValue(bean: addressInstance, field: "calle")}</g:link></td>
					
						<td>${fieldValue(bean: addressInstance, field: "colonia")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "numeroExterior")}</td>
					
						<td>${fieldValue(bean: addressInstance, field: "numeroIxterior")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${addressInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

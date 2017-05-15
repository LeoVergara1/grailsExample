
<%@ page import="com.makingdevs.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-alumno" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'alumno.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="apellidoPaterno" title="${message(code: 'alumno.apellidoPaterno.label', default: 'Apellido Paterno')}" />
					
						<g:sortableColumn property="apellidoMaterno" title="${message(code: 'alumno.apellidoMaterno.label', default: 'Apellido Materno')}" />
					
						<g:sortableColumn property="boleta" title="${message(code: 'alumno.boleta.label', default: 'Boleta')}" />
					
						<g:sortableColumn property="creditos" title="${message(code: 'alumno.creditos.label', default: 'Creditos')}" />
					
						<th><g:message code="alumno.direccion.label" default="Direccion" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${alumnoInstanceList}" status="i" var="alumnoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${alumnoInstance.id}">${fieldValue(bean: alumnoInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apellidoPaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "apellidoMaterno")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "boleta")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "creditos")}</td>
					
						<td>${fieldValue(bean: alumnoInstance, field: "direccion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${alumnoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>


<%@ page import="com.makingdevs.Alumno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'alumno.label', default: 'Alumno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-alumno" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-alumno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list alumno">
			
				<g:if test="${alumnoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="alumno.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${alumnoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoPaterno}">
				<li class="fieldcontain">
					<span id="apellidoPaterno-label" class="property-label"><g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoPaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoPaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.apellidoMaterno}">
				<li class="fieldcontain">
					<span id="apellidoMaterno-label" class="property-label"><g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" /></span>
					
						<span class="property-value" aria-labelledby="apellidoMaterno-label"><g:fieldValue bean="${alumnoInstance}" field="apellidoMaterno"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.boleta}">
				<li class="fieldcontain">
					<span id="boleta-label" class="property-label"><g:message code="alumno.boleta.label" default="Boleta" /></span>
					
						<span class="property-value" aria-labelledby="boleta-label"><g:fieldValue bean="${alumnoInstance}" field="boleta"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.creditos}">
				<li class="fieldcontain">
					<span id="creditos-label" class="property-label"><g:message code="alumno.creditos.label" default="Creditos" /></span>
					
						<span class="property-value" aria-labelledby="creditos-label"><g:fieldValue bean="${alumnoInstance}" field="creditos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="alumno.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:link controller="address" action="show" id="${alumnoInstance?.direccion?.id}">${alumnoInstance?.direccion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.fechaDeNacimiento}">
				<li class="fieldcontain">
					<span id="fechaDeNacimiento-label" class="property-label"><g:message code="alumno.fechaDeNacimiento.label" default="Fecha De Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaDeNacimiento-label"><g:formatDate date="${alumnoInstance?.fechaDeNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${alumnoInstance?.school}">
				<li class="fieldcontain">
					<span id="school-label" class="property-label"><g:message code="alumno.school.label" default="School" /></span>
					
						<span class="property-value" aria-labelledby="school-label"><g:link controller="school" action="show" id="${alumnoInstance?.school?.id}">${alumnoInstance?.school?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:alumnoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${alumnoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

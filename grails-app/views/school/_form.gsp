<%@ page import="com.makingdevs.School" %>



<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'claveDeRegistro', 'error')} required">
	<label for="claveDeRegistro">
		<g:message code="school.claveDeRegistro.label" default="Clave De Registro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="claveDeRegistro" required="" value="${schoolInstance?.claveDeRegistro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="school.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${com.makingdevs.Address.list()}" optionKey="id" required="" value="${schoolInstance?.direccion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="school.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${schoolInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: schoolInstance, field: 'students', 'error')} ">
	<label for="students">
		<g:message code="school.students.label" default="Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${schoolInstance?.students?}" var="s">
    <li><g:link controller="alumno" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="alumno" action="create" params="['school.id': schoolInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'alumno.label', default: 'Alumno')])}</g:link>
</li>
</ul>


</div>


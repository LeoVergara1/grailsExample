<%@ page import="com.makingdevs.Alumno" %>



<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="alumno.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="40" required="" value="${alumnoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoPaterno', 'error')} required">
	<label for="apellidoPaterno">
		<g:message code="alumno.apellidoPaterno.label" default="Apellido Paterno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoPaterno" maxlength="40" required="" value="${alumnoInstance?.apellidoPaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'apellidoMaterno', 'error')} required">
	<label for="apellidoMaterno">
		<g:message code="alumno.apellidoMaterno.label" default="Apellido Materno" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidoMaterno" maxlength="40" required="" value="${alumnoInstance?.apellidoMaterno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'boleta', 'error')} required">
	<label for="boleta">
		<g:message code="alumno.boleta.label" default="Boleta" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="boleta" maxlength="12" required="" value="${alumnoInstance?.boleta}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'creditos', 'error')} required">
	<label for="creditos">
		<g:message code="alumno.creditos.label" default="Creditos" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="creditos" type="number" value="${alumnoInstance.creditos}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="alumno.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="direccion" name="direccion.id" from="${com.makingdevs.Address.list()}" optionKey="id" required="" value="${alumnoInstance?.direccion?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'fechaDeNacimiento', 'error')} required">
	<label for="fechaDeNacimiento">
		<g:message code="alumno.fechaDeNacimiento.label" default="Fecha De Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaDeNacimiento" precision="day"  value="${alumnoInstance?.fechaDeNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alumnoInstance, field: 'school', 'error')} required">
	<label for="school">
		<g:message code="alumno.school.label" default="School" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="school" name="school.id" from="${com.makingdevs.School.list()}" optionKey="id" required="" value="${alumnoInstance?.school?.id}" class="many-to-one"/>

</div>


<%@ page import="com.makingdevs.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="address.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${addressInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'colonia', 'error')} required">
	<label for="colonia">
		<g:message code="address.colonia.label" default="Colonia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="colonia" required="" value="${addressInstance?.colonia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'numeroExterior', 'error')} required">
	<label for="numeroExterior">
		<g:message code="address.numeroExterior.label" default="Numero Exterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroExterior" required="" value="${addressInstance?.numeroExterior}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'numeroIxterior', 'error')} required">
	<label for="numeroIxterior">
		<g:message code="address.numeroIxterior.label" default="Numero Ixterior" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numeroIxterior" required="" value="${addressInstance?.numeroIxterior}"/>

</div>


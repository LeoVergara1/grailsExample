<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="layout" content="main">
    <title></title>
  </head>
  <body>
    <div class="nav" role="navigation">
      <ul>
      </ul>
    </div>
    <div role="main">
      <h1>Inscripción escolar a ${schoolInstance.nombre}</h1>
			<g:form url="[action:'save']" >
				<fieldset class="form">

          <g:hasErrors bean="${alumnoInstance}">
          <ul class="errors" role="alert">
            <g:eachError bean="${alumnoInstance}" var="error">
            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
              </g:eachError>
          </ul>
          </g:hasErrors>

          <g:hiddenField name="school.id" value="${schoolInstance.id}" />
					<g:render template="alumno"/>
					<g:render template="direccion"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Nueva inscripción" />
				</fieldset>
      </g:form>
    </div>
  </body>
</html>

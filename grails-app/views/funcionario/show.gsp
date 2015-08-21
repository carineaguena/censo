
<%@ page import="funcionarios.Funcionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'funcionario.label', default: 'Funcionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-funcionario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-funcionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list funcionario">
			
				<g:if test="${funcionarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="funcionario.nome.label" default="Nome" /></span>
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${funcionarioInstance}" field="nome"/></span>
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.cargo}">
				<li class="fieldcontain">
					<span id="cargo-label" class="property-label"><g:message code="funcionario.cargo.label" default="Cargo" /></span>
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${funcionarioInstance}" field="cargo.nome"/></span>
				</li>
				</g:if>
			
				<g:if test="${funcionarioInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="funcionario.departamento.label" default="Departamento" /></span>
						<span class="property-value" aria-labelledby="cargo-label"><g:fieldValue bean="${funcionarioInstance}" field="departamento.nome"/></span>					
				</li>
				</g:if>
			
			</ol>
			
			<!--  formContato agrupo o código HTML para tratar os contatos do Funcionário  -->
			<div id="formContato" style="border: 1px solid;">
				<h1>Contatos</h1>
				<div id="dvMensagem" style="text-align:center;"></div>
				<section id="contatoCreate">
					<g:render template="contato" />
				</section>
				<section id="contatoList">
					<g:render template="listaContatos" />
				</section>
			</div>
			<!-- FIM do formContato -->

			<!--  formDependente agrupo o código HTML para tratar os dependentes do Funcionário  -->
			<div id="formDependente" style="border: 1px solid;">
				<h1>Dependente</h1>
				<div id="dvMensagemDependente" style="text-align:center;"></div>
				<section id="dependenteCreate">
					<g:render template="dependente" />
				</section>
				<section id="dependenteList">
					<g:render template="listaDependentes" />
				</section>
			</div>
			<!-- FIM do formDependente -->

			<!--  formTitulacao agrupo o código HTML para tratar as titulações do Funcionário  -->
			<div id="formTitulacao" style="border: 1px solid;">
				<h1>Titulações</h1>
				<div id="dvMensagemTitulacao" style="text-align:center;"></div>
				<section id="titulacaoCreate">
					<g:render template="titulacao" />
				</section>
				<section id="titulacaoList">
					<g:render template="listaTitulacoes" />
				</section>
			</div>
			<!-- FIM do formTitulacao -->
			
			<g:form url="[resource:funcionarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${funcionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

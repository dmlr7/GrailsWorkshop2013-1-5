
<%@ page import="grailsworkshop2013_1_5.Budget" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'budget.label', default: 'Budget')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-budget" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-budget" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list budget">
			
				<g:if test="${budgetInstance?.trip}">
				<li class="fieldcontain">
					<span id="trip-label" class="property-label"><g:message code="budget.trip.label" default="Trip" /></span>
					
						<span class="property-value" aria-labelledby="trip-label"><g:link controller="trip" action="show" id="${budgetInstance?.trip?.id}">${budgetInstance?.trip?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${budgetInstance?.food}">
				<li class="fieldcontain">
					<span id="food-label" class="property-label"><g:message code="budget.food.label" default="Food" /></span>
					
						<span class="property-value" aria-labelledby="food-label"><g:fieldValue bean="${budgetInstance}" field="food"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${budgetInstance?.lodging}">
				<li class="fieldcontain">
					<span id="lodging-label" class="property-label"><g:message code="budget.lodging.label" default="Lodging" /></span>
					
						<span class="property-value" aria-labelledby="lodging-label"><g:fieldValue bean="${budgetInstance}" field="lodging"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${budgetInstance?.otherexpenses}">
				<li class="fieldcontain">
					<span id="otherexpenses-label" class="property-label"><g:message code="budget.otherexpenses.label" default="Otherexpenses" /></span>
					
						<span class="property-value" aria-labelledby="otherexpenses-label"><g:fieldValue bean="${budgetInstance}" field="otherexpenses"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${budgetInstance?.owner}">
				<li class="fieldcontain">
					<span id="owner-label" class="property-label"><g:message code="budget.owner.label" default="Owner" /></span>
					
						<span class="property-value" aria-labelledby="owner-label"><g:link controller="trip" action="show" id="${budgetInstance?.owner?.id}">${budgetInstance?.owner?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${budgetInstance?.tickets}">
				<li class="fieldcontain">
					<span id="tickets-label" class="property-label"><g:message code="budget.tickets.label" default="Tickets" /></span>
					
						<span class="property-value" aria-labelledby="tickets-label"><g:fieldValue bean="${budgetInstance}" field="tickets"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${budgetInstance?.id}" />
					<g:link class="edit" action="edit" id="${budgetInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

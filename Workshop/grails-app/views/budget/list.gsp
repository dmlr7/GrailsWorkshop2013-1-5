
<%@ page import="grailsworkshop2013_1_5.Budget" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'budget.label', default: 'Budget')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-budget" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-budget" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="budget.trip.label" default="Trip" /></th>
					
						<g:sortableColumn property="food" title="${message(code: 'budget.food.label', default: 'Food')}" />
					
						<g:sortableColumn property="lodging" title="${message(code: 'budget.lodging.label', default: 'Lodging')}" />
					
						<g:sortableColumn property="otherexpenses" title="${message(code: 'budget.otherexpenses.label', default: 'Otherexpenses')}" />
					
						<th><g:message code="budget.owner.label" default="Owner" /></th>
					
						<g:sortableColumn property="tickets" title="${message(code: 'budget.tickets.label', default: 'Tickets')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${budgetInstanceList}" status="i" var="budgetInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${budgetInstance.id}">${fieldValue(bean: budgetInstance, field: "trip")}</g:link></td>
					
						<td>${fieldValue(bean: budgetInstance, field: "food")}</td>
					
						<td>${fieldValue(bean: budgetInstance, field: "lodging")}</td>
					
						<td>${fieldValue(bean: budgetInstance, field: "otherexpenses")}</td>
					
						<td>${fieldValue(bean: budgetInstance, field: "owner")}</td>
					
						<td>${fieldValue(bean: budgetInstance, field: "tickets")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${budgetInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

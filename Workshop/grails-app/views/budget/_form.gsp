<%@ page import="grailsworkshop2013_1_5.Budget" %>



<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'trip', 'error')} ">
	<label for="trip">
		<g:message code="budget.trip.label" default="Trip" />
		
	</label>
	<g:select id="trip" name="trip.id" from="${grailsworkshop2013_1_5.Trip.list()}" optionKey="id" value="${budgetInstance?.trip?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'food', 'error')} required">
	<label for="food">
		<g:message code="budget.food.label" default="Food" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="food" value="${fieldValue(bean: budgetInstance, field: 'food')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'lodging', 'error')} required">
	<label for="lodging">
		<g:message code="budget.lodging.label" default="Lodging" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="lodging" value="${fieldValue(bean: budgetInstance, field: 'lodging')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'otherexpenses', 'error')} required">
	<label for="otherexpenses">
		<g:message code="budget.otherexpenses.label" default="Otherexpenses" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="otherexpenses" value="${fieldValue(bean: budgetInstance, field: 'otherexpenses')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'owner', 'error')} required">
	<label for="owner">
		<g:message code="budget.owner.label" default="Owner" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="owner" name="owner.id" from="${grailsworkshop2013_1_5.Trip.list()}" optionKey="id" required="" value="${budgetInstance?.owner?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: budgetInstance, field: 'tickets', 'error')} required">
	<label for="tickets">
		<g:message code="budget.tickets.label" default="Tickets" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tickets" value="${fieldValue(bean: budgetInstance, field: 'tickets')}" required=""/>
</div>


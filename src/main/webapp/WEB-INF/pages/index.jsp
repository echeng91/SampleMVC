<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Eric's Sample App Sign-up Page</title>
</head>
<body>

<h1>Sign Up Here!</h1>

<form:form method="post" modelAttribute="signupForm" action="create" id="signupForm" cssClass="form-horizontal"
           autocomplete="off">
    <fieldset>
        <legend>Enter Your Information</legend>

        <c:set var="emailErrors"><form:errors path="email"/></c:set>
        <div class="control-group<c:if test="${not empty emailErrors}"> error</c:if>">
            <label class="control-label" for="field-email">Email</label>

            <div class="controls">
                <form:input path="email" id="field-email" tabindex="1" maxlength="45" placeholder="Email"/>
                <form:errors path="email" cssClass="help-inline" element="span"/>
            </div>
        </div>
        <c:set var="firstNameErrors"><form:errors path="firstName"/></c:set>
        <div class="control-group<c:if test="${not empty firstNameErrors}"> error</c:if>">
            <label class="control-label" for="field-firstName">First Name</label>
            <div class="controls">
                <form:input path="firstName" id="field-firstName" tabindex="2" maxlength="35" placeholder="First Name"/>
                <form:errors path="firstName" cssClass="help-inline" element="span"/>
            </div>
        </div>
        <c:set var="lastNameErrors"><form:errors path="lastName"/></c:set>
        <div class="control-group<c:if test="${not empty lastNameErrors}"> error</c:if>">
            <label class="control-label" for="field-lastName">Last Name</label>
            <div class="controls">
                <form:input path="lastName" id="field-lastName" tabindex="3" maxlength="35" placeholder="Last Name"/>
                <form:errors path="lastName" cssClass="help-inline" element="span"/>
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">Sign up</button>
            <button type="button" class="btn">Cancel</button>
        </div>
    </fieldset>
</form:form>


</body>
</html>

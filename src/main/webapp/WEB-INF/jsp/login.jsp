<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<c:url value="/j_spring_security_logout" var="logoutUrl"/>

<form action="${logoutUrl}" method="post" id="logoutForm">
    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>

<script>
    function formSubmit() {
        document.getElementById("logoutForm").submit();
    }
</script>

<%@include file="header.jsp" %>

<html>
<body>
<div class="text-center">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h4>${pageContext.request.userPrincipal.name} | <a href="javascript:formSubmit()">Sign Out</a></h4>
    </c:if>
</div>
<c:if test="${pageContext.request.userPrincipal.name == null}">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'
                      class="form-horizontal">
                    <fieldset>
                        <br>
                        <div>
                            <div class="text-center"><h4>Sign In</h4></div>
                        </div>
                        <hr>
                        <c:if test="${not empty error}">
                            <div class="error text-center text-danger">${error}</div>
                        </c:if>
                        <c:if test="${not empty msg}">
                            <div class="msg text-center text-danger">${msg}</div>
                        </c:if>
                        <br>
                        <div class="form-group">
                            <label c for="email">Email:</label>
                            <div class="controls">
                                <input type="email" id="email" name="email" placeholder="Please enter your account email."
                                       class="form-control input-xlarge ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <div class="controls">
                                <input type="password" id="password" name="password" placeholder="Please enter your account password."
                                       class="form-control input-xlarge">
                            </div>
                        </div>
                        <hr>
                        <div class="form-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </div>
                    </fieldset>
                    <input type="hidden" name="${_csrf.parameterName}"
                           value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>
</c:if>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@include file="header.jsp" %>

<br/>
<div class="container">
    <h4 style="text-align: center">Dodavanje Marki</h4>
    <hr>
    <div class="container">
        <div class="col-md-6 col-md-offset-3">
            <c:url var="addMarkaTelefona" value="/addMarkaTelefona"></c:url>
            <c:url var="post_url" value="/addMarkaTelefona"/>
            <form:form method="POST" modelAttribute="markaTelefona" action="${post_url}">
                <% String success = (String) request.getAttribute("successMsg");%>
                <%= (success != null) ? "<div class=\"alert alert-success\">" + success + "</div>" : ""%>
                <div class="form-group">
                    <form:input type="hidden" id="markaId" class="form-control" placeholder="" path="markaId"/>
                    <form:label path="markaNaziv">Naziv marke telefona:</form:label>
                    <form:input type="text" class="form-control" id="markaNaziv" placeholder=""
                                path="markaNaziv"/>
                </div>
                <div class="form-group">
                    <form:label path="markaOpis">Opis marke telefona:</form:label>
                    <form:input type="textarea" class="form-control" id="markaOpis" placeholder=""
                                path="markaOpis"/>
                </div>
                <button type="submit" class="btn btn-primary">Dodaj</button>
            </form:form>
        </div>
    </div>
</div>
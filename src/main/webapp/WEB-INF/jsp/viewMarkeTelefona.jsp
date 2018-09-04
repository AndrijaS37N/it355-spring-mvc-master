<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@include file="header.jsp" %>

<br>
<div class="container">
<h4 style="text-align: center">Pregled Marki</h4>
<hr>
<c:if test="${!empty markeTelefona}">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Naziv marke telefona</th>
            <th>Opis marke telefona</th>
            <c:if test="${pageContext.request.userPrincipal.name != null}">
                <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                    <th>Izmena</th>
                    <th>Brisanje</th>
                </c:if>
            </c:if>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${markeTelefona}" var="markaTelefona">
            <tr>
                <td>${markaTelefona.markaNaziv}</td>
                <td>${markaTelefona.markaOpis}</td>
                <c:if test="${pageContext.request.userPrincipal.name != null}">
                    <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                        <td><a href="<c:url value='/editMarkaTelefona/${markaTelefona.markaId}' />">Izmeni</a></td>
                        <td><a href="<c:url value='/deleteMarkaTelefona/${markaTelefona.markaId}' />">Izbrisi</a></td>
                    </c:if>
                </c:if>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</div>
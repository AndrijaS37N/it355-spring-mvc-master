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
<h4 style="text-align: center">Pregled Telefona</h4>
<hr>
<c:if test="${!empty telefoni}">

    <table class="table table-striped">
        <thead>
        <tr>
            <th>Marka</th>
            <th>Naziv</th>
            <th>Opis</th>
            <th>Vodootporan</th>
            <th>Brisanje</th>
            <th>Detaljnije</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${telefoni}" var="telefon">
            <tr>
                <td>${telefon.markaTelefona.markaNaziv}</td>
                <td>${telefon.telefonNaziv}</td>
                <td>${telefon.telefonOpis}</td>
                <td>${telefon.telefonVodootporan}</td>
                <td><a href="<c:url value='/deleteTelefon/${telefon.telefonId}' />">Izbrisi</a></td>
                <td><a href="<c:url value='/viewJedanTelefon/${telefon.telefonId}' />">Detaljnije</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</c:if>
</div>
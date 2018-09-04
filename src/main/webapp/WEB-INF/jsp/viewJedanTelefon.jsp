<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@include file="header.jsp" %>

<h4 style="text-align: center">Pregled telefona po id-u:</h4>
<div class="col-md-8 col-md-offset-2">
    <c:if test="${!empty telefon}">
        <ul class="list-group">
            <li class="list-group-item">> Naziv: ${telefon.telefonNaziv}</li>
            <li class="list-group-item">> Opis: ${telefon.telefonOpis}</li>
            <li class="list-group-item">> Memorija (GB): ${telefon.telefonMemorija}</li>
            <li class="list-group-item">> Marka: ${telefon.markaTelefona.markaNaziv}</li>
            <li class="list-group-item">> Procesor (GHz): ${telefon.telefonBrzinaProcesora}</li>
            <li class="list-group-item">> Kamera (MP): ${telefon.telefonJacinaKamere}</li>
            <li class="list-group-item">> Vodootporan: ${telefon.telefonVodootporan}</li>
        </ul>
    </c:if>
</div>



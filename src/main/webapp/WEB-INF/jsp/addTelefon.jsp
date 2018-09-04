<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<%@include file="header.jsp" %>
<c:url var="addTelefon" value="/addTelefon"></c:url>

<div class="container">
    <div class="col-md-6 col-md-offset-3">
        <c:url var="post_url" value="/addTelefon"/>
        <form:form method="POST" action="${post_url}" modelAttribute="telefon">
            <% String success = (String) request.getAttribute("successMsg"); %>
            <%= (success != null) ? "<div class=\"alert alert-success\">" + success + "</div>" : "" %>
            <div class="form-group">
                <form:label for="markaTelefona" path="markaTelefona">Marke telefona:</form:label>
                <form:select id="slcRole" class="form-control" path="markaTelefona">
                    <form:option value="">SELECT</form:option>
                    <form:options items="${markeTelefona}" itemValue="markaId" itemLabel="markaNaziv"/>
                </form:select>
            </div>
            <div class="form-group">
                <form:label path="telefonNaziv">Naziv:</form:label>
                <form:input type="text" id="telefonNaziv" class="form-control" placeholder=""
                            path="telefonNaziv"/>
            </div>
            <div class="form-group">
                <form:label path="telefonOpis">Opis:</form:label>
                <form:input type="text" id="telefonOpis" class="form-control" placeholder=""
                            path="telefonOpis"/>
            </div>
            <div class="form-group">
                <form:label path="telefonMemorija">Memorija:</form:label>
                <form:input type="number" id="telefonMemorija" class="form-control"
                            placeholder="GB" path="telefonMemorija"/>
            </div>
            <div class="form-group">
                <form:label path="telefonBrzinaProcesora">Brzina procesora:</form:label>
                <form:input type="double" id="telefonBrzinaProcesora" class="form-control"
                            placeholder="GHz" path="telefonBrzinaProcesora"/>
            </div>
            <div class="form-group">
                <form:label path="telefonJacinaKamere">Jacina kamere:</form:label>
                <form:input type="number" id="telefonJacinaKamere" class="form-control"
                            placeholder="MP" path="telefonJacinaKamere"/>
            </div>
            <div class="form-group">
                <form:label path="telefonVodootporan">Vodootporan:</form:label>
                <form:input type="boolean" id="telefonVodootporan" class="form-control"
                            placeholder="True or false?" path="telefonVodootporan"/>
            </div>

            <button type="submit" class="btn btn-primary">Dodaj</button>
        </form:form>
    </div>
</div>

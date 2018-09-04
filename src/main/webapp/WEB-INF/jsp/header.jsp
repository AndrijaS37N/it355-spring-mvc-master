<%--
  Created by IntelliJ IDEA.
  User: andrijadjuric
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    String uri = request.getRequestURI();
    String pageName = uri.substring(uri.lastIndexOf("/") + 1);
%>

<!DOCTYPE html>
<body>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.1.1.js"
            integrity="sha256-16cdPddA6VdVInumRGo6IbivbERE8p7CQR3HzTBuELA=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css"/>

    <script>
        $(document).ready(function () {
            $("table").DataTable();
        });
    </script>

    <title>Telephone Shop</title>

</head>
<body>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container">
            <!-- brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <c:url var="home" value="/"/>
                    <c:url var="addmarkatelefona" value="/addMarkaTelefona"/>
                    <c:url var="viewmarketelefona" value="/viewMarkeTelefona"/>
                    <c:url var="addtelefon" value="/addTelefon"/>
                    <c:url var="viewtelefoni" value="/viewTelefoni"/>
                    <c:url var="login" value="/login"/>

                    <li class="<%=  (pageName.equals("home.jsp")) ? "active" : ""%>"><a href="${home}">Home</a></li>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <c:if test="${pageContext.request.isUserInRole('ROLE_USER')}">
                            <li class="<%=  (pageName.equals("viewTelefoni.jsp")) ? "active" : ""%>"><a
                                    href="${viewtelefoni}">Pregled Telefona</a></li>
                        </c:if>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <li class="<%=  (pageName.equals("addMarkaTelefona.jsp")) ? "active" : ""%>"><a
                                    href="${addmarkatelefona}">Dodaj Marku Telefona</a></li>
                        </c:if>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <li class="<%=  (pageName.equals("viewMarkeTelefona.jsp")) ? "active" : ""%>"><a
                                    href="${viewmarketelefona}">Pregled Marki</a></li>
                        </c:if>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <c:if test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
                            <li class="<%=  (pageName.equals("addTelefon.jsp")) ? "active" : ""%>"><a
                                    href="${addtelefon}">Dodaj Telefon</a></li>
                        </c:if>
                    </c:if>

                    <li class="<%=  (pageName.equals("login.jsp")) ? "active" : ""%>"><a href="${login}">Profile</a>
                    </li>

                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <li class="<%=  (pageName.equals("register.jsp")) ? "inactive" : ""%> disabled"><a
                                href="${register}">Sign Up</a></li>
                    </c:if>

                </ul>
            </div>
        </div>
    </nav>
</div>
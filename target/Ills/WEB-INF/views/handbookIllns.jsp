<%@ page import="core.entity.Illness" %>
<%@ page import="services.HandbookIllnsService" %>;
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>

    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/creative.css"/>" type="text/css">    <title>HANDBOOK. ILLNESSES</title>
</head>
<body>
<center>
    <nav id="pgg2" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid" >
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" id="pgg1" href="#page-top">Спадкові хвороби людини</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" id="pgg" href="handbookOS">Довідник</a>
                    </li>
                    <li>
                         <a class="page-scroll"  id="pgg" href="/diagnosticOS">Діагностика</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="mycont">
    <h2>${pageName}</h2>
    <h2>
        <div class="container">
            <%
                List<Illness> illnesses = (List<Illness>) request.getAttribute("list");
                for (Illness illness : illnesses) {
            %>
            <a class="btn btn-info" href="/illnesses/<%=illness.getId()%>"><%=illness.getName()%></a>
            <% } %>
        </div>
    </h2>
        </div>
</center>
</body>
</html>
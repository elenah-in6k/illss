<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html >
<html>
<head>
    <style>
        .btnnn {
            margin: 14px;
            margin: 14px;
        }

        .table-stripe > tbody > tr:nth-of-type(odd) {
            background-color: #97f7ca;
        }
    </style>

    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/creative.css"/>" type="text/css">    <title>Результати діагностики</title>
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
                <a class="navbar-brand page-scroll" id="pgg1" href="/index.jsp">Спадкові хвороби людини</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" id="pgg" href="/handbookOS">Довідник</a>
                    </li>
                    <li>
                         <a class="page-scroll"  id="pgg" href="/diagnosticOS">Діагностика</a>
                    </li>
                    <li>
                        <a class="page-scroll" id ="pgg"  href="/about">Про сайт</a>
                    </li>
                    <li>
                        <form action="/illnesses/search">
                            <input class="btnnn page-scroll" type="text" placeholder="Пошук хвороби" name="name"/>
                            <%--<input class="btn-primary btnnn" type="submit" value="Пошук"/>--%>
                        </form>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="mycont">
    <div class="container ">
        <h2>Результати діагностики</h2>
        <h3><span class=""> Симптоми:</span>
        <c:forEach items="${symptomsList}" var="symptom" varStatus="loop">
        <div class="btn" id="pgg3"> ${symptom.getName()} </div>
        </c:forEach>
        </h3>
        <div class="">
            <div>
                <table class="table table-stripe">
                    <tr>
                        <th>Назва хвороби</th>
                        <th>Кількість співпадінь</th>
                    </tr>
                    <c:forEach items="${result}" var="illness" varStatus="loop">
                        <tr>
                            <td><a href="/illnesses/${illness.getIllness().getId()}">${illness.getIllness().getName()} </a></td>
                            <td>${illness.getNumberMatches()}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <a href="/result/download" class="btn btn-primary btn-xl page-scroll">Завантажити результати</a>
</center>
</body>
</html>
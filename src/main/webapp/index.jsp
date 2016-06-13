<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
    <style>
    .btnnn {
        margin: 14px;
        margin: 14px;
    }
    footer .footer-content {
        text-align: right;
    }
    </style>

    <link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
          rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" type="text/css">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>" type="text/css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/resources/css/creative.css"/>" type="text/css">
    <title>Інформаційна система: "Спадкові хвороби людини"</title>
</head>
<body>
<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand page-scroll" href="/index.jsp">Спадкові хвороби людини</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a class="page-scroll" href="/handbookOS">Довідник</a>
                </li>
                <li>
                     <a class="page-scroll" href="/diagnosticOS">Діагностика</a>
                </li>
                <li>
                    <a class="page-scroll" href="/about">Про сайт</a>
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

<header>
    <div class="header-content">
        <div class="header-content-inner">
            <h1>Інформаційна система: <br/> "Спадкові хвороби людини"</h1>
            <hr>
            <p>Інформаційна система спеціалізується на діагностуванні людських спадкових хвороб; підтримці лікарських рішень у винесенні діагнозу; підтримці ознайомчо-навчальних цілей.
                Дана інформаційна система не забезпечує 100-відсотковий остаточний діагноз, а тому, при наявності скарг на здоров'я, необхідно звернутись до лікаря-спеціаліста.</p>

            <a href="handbookOS" class="btn btn-primary btn-xl page-scroll">Довідник</a>
            <a href="diagnosticOS" class="btn btn-primary btn-xl page-scroll">Діагностика</a>

        </div>
    </div>
</header>
<footer>
    <div class="footer-content navbar-fixed-bottom navbar navbar-default">
        <a href="admin-page">Адміністрування</a>
    </div>
    </footer>
</body>
</html>
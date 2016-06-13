<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <link rel="stylesheet" href="<c:url value="/resources/css/creative.css"/>" type="text/css">    <title>DIAGNOSTIC</title>
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
                        <a class="page-scroll" id="pgg" href="">Хвороби</a>
                    </li>
                    <li>
                        <a class="page-scroll"  id="pgg" href="">Симптоми</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <div class="mycont">
        <div class="container ">
            <h2>Симптоми </h2>

            <form method="POST" action="/admin-page/symptom/create">
               <input type="text" name="name" placeholder="Введіть назву симптому" style="width: 50%;">

                <button type="submit" class="btn btn-default">
                        <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                        Створити </button>
            </form>

            <table class = "table table-striped" >
                <c:forEach items="${symptomsList}" var="symptom" varStatus="loop">
                    <tr><form method="POST" action="/admin-page/symptom">
                        <td><input type="text" name="name" value="${symptom.getName()}" style="width: 100%;"> </td>
                        <td><input type="hidden" name="id" value="${symptom.getId()}"> </td>
                        <td>

                            <button type="submit" class="btn btn-default">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                Редагувати </button>
                        </td>
                    </form>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
</center>
</body>
</html>
<%@ page import="java.util.List" %>
<%@ page import="core.entity.Symptom" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
    <link rel="stylesheet" href="<c:url value="/resources/css/creative.css"/>" type="text/css">    <title>Симптоми</title>
</head>
<body>
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
                    <a class="page-scroll"  id ="pgg" href="/about">Про сайт</a>
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
    <h2>Оберіть симптоми: </h2>
    <div class="">
        <script> function checkAll(ele) {
            var checkboxes = document.getElementsByTagName('input');
            if (ele.checked) {
                for (var i = 0; i < checkboxes.length; i++) {
                    if (checkboxes[i].type == 'checkbox') {
                        checkboxes[i].checked = true;
                    }
                }
            } else {
                for (var i = 0; i < checkboxes.length; i++) {
                    console.log(i)
                    if (checkboxes[i].type == 'checkbox') {
                        checkboxes[i].checked = false;
                    }
                }
            }
        }
        </script>
        <div style="visibility: hidden"> <div class="alert alert-warning" style="visibility: ${showWarning}">${warning}</div></div>
        <script type="text/javascript">
            var lastResFind=""; // последний удачный результат
            var copy_page=""; // копия страницы в ихсодном виде
            function TrimStr(s) {
                s = s.replace( /^\s+/g, '');
                return s.replace( /\s+$/g, '');
            }
            function FindOnPage(inputId) {//ищет текст на странице, в параметр передается ID поля для ввода
                var obj = window.document.getElementById(inputId);
                var textToFind;

                if (obj) {
                    textToFind = TrimStr(obj.value);//обрезаем пробелы
                } else {
                    alert("Введеного симптому не знайдено");
                    return;
                }
                if (textToFind == "") {
                    alert("Ви не ввели назву симптому");
                    return;
                }

                if(document.body.innerHTML.indexOf(textToFind)=="-1")
                    //alert("Ничего не найдено, проверьте правильность ввода!");

                if(copy_page.length>0)
                    document.body.innerHTML=copy_page;
                else copy_page=document.body.innerHTML;


                document.body.innerHTML = document.body.innerHTML.replace(eval("/name="+lastResFind+"/gi")," ");//стираем предыдущие якори для скрола
                document.body.innerHTML = document.body.innerHTML.replace(eval("/"+textToFind+"/gi"),"<a name="+textToFind+" style='background:#f05f40; color:white;'>"+textToFind+"</a>"); //Заменяем найденный текст ссылками с якорем;
                lastResFind=textToFind; // сохраняем фразу для поиска, чтобы в дальнейшем по ней стереть все ссылки
                window.location = '#'+textToFind;//перемещаем скрол к последнему найденному совпадению
            }
        </script>

        <input type="text" id="text-to-find" placeholder="Пошук симптома" value="">
        <input class="btn btn-primary btn-xl page-scroll" type="button" onclick=" FindOnPage('text-to-find')" value="Пошук"/>

        <div style="float: right;"><INPUT  type="checkbox" onchange="checkAll(this)" name="chk[]" /> Вибрати всі<br/></div>
        <form:form method="POST" commandName="result" action="/symptoms-result">
            <table class = "table table-stripe" >
                <c:forEach items="${symptomsList}" var="symptom" varStatus="loop">
                    <tr>
                        <td>
                        ${symptom.getName()}
                            <input type="hidden" name="symptomsList[${loop.index}].id" value="${symptom.getId()}"/>
                            <input type="hidden" name="symptomsList[${loop.index}].name" value="${symptom.getName()}"/>

                        </td>
                        <td><form:checkbox name="foo" path="symptomsList[${loop.index}].enabled"/></td>
                    </tr>
                </c:forEach>
            </table>
            <input class="btn btn-primary btn-xl page-scroll" type="submit" name="submit" value="Діагностувати" />
            <div style="visibility: hidden"> <div class="alert alert-warning" style="visibility: ${showWarning}">${warning}</div></div>
        </form:form>
    </div>
</div>
</div>
</body>
</html>
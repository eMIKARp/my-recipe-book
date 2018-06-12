<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Indie+Flower" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>mójPrzepiśnik</title>
    </head>

    <body>
        <div class="myHeader">
            <div class="myRow">
                <h2>Witaj w aplikacji &nbsp</h2>
                <h2 style="font-family: 'Indie Flower', cursive;"><b>mójPrzepiśnik</b></h2>
            </div>    
            <h6>Przygotuj na dzisiaj coś wyjątkowego !</h6>
        </div>
        
        <div class="myRow" style="position: sticky; position: -webkit-sticky; top: 0;">
            
            <div class="myTopNav" id="myTopNav">
                <div class="navHeader" style="font-family: 'Indie Flower', cursive;"> 
                    <a href="index"><b>mójPrzepiśnik</b></a>
                    <a href="javascript:void(0);" class="icon" onclick="showTopNav()">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
                
                <a href="index">Strona główna</a> 
                <a href="my_recipes">Moje przepisy</a> 
                <a href="add">Dodaj przepis</a>
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <a href="logout">Wyloguj</a>
                    </c:when>
                    <c:otherwise>
                        <a href="login">Zaloguj</a>    
                    </c:otherwise>    
                </c:choose>
            </div>
        </div> 
        
        <div class="myColumn" style="background-color: #f1f1f1;">
            <div class="myForm">
                <form action="j_security_check" method="post">
                        <h3 class="form-signin-heading">Zaloguj się</h3>
                        <input name="j_username" type="text" class="form-control" style="margin-bottom: 5px;" placeholder="Nazwa uzytkownika" required autofocus>
                        <input name="j_password" type="password" class="form-control" style="margin-bottom: 5px;" placeholder="Hasło" required>
                        <button class="btn btn-md btn-block" style="margin-bottom: 10px; background-color: #1abc9c; color:white" type="submit">Zaloguj</button>
                        <a href="register" style="color:grey;">Zarejestruj</a>
                </form>
            </div>    
        </div>
        
        <div class="myFooter">
            <h6>Copyright &copy; Emil Karpowicz</h6>
        </div>
        
        <script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
        <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
 
        <script>
        function showTopNav() {
            var x = document.getElementById("myTopNav");
            if (x.className === "myTopNav") {
                x.className += " responsive";
            } else {
                x.className = "myTopNav";
            }
        }
        </script>
        <script>
        function showSideNav() {
            var x = document.getElementById("mySideNav");
            if (x.className === "mySideNav") {
                x.className += " responsive";
            } else {
                x.className = "mySideNav";
            }
        }
        </script>
        
    </body>
</html>

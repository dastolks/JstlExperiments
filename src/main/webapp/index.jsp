<%-- 
    Document   : Index
    Created on : Feb 1, 2017, 5:24:27 PM
    Author     : Alec
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styleset.css">
    </head>
    <body>
        <h1>The Magician's Corner</h1>
        
        <h2>Printing Lines</h2>
        <c:forEach var="i" begin="0" end="10">
        Check out these lines: <c:out value="${i}"/><br>
        </c:forEach><br><br>
        <h2>Formatting Numbers</h2>
        <c:set var="amount" value="1220.2439102391203901239" />
        See this value? ${amount} <br>
        NOW IT'S FORMATTED: <fmt:formatNumber value="${amount}" maxFractionDigits="2"/><br><br>
    
        <h2>Name Guessing</h2>
        Now watch as I guess your name. <br>
        <%
            String[] names = {"Alec", "Marron", "Benson", "Doug"};
            pageContext.setAttribute("names", names);
        %>
        I guess your name is ${names[Math.random()*4]}! Am I right? <br>
    </body>
</html>

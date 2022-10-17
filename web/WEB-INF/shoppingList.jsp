<%-- 
    Document   : shoppingList
    Created on : Oct 16, 2022, 8:15:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}
            <a href="ShoppingList?action=logout">Logout</a>
        </p>
        
        <h3>List</h3>
        <form action="" method="post">
            Add item: <input type="text" name="item">
            <input type="submit" value="Add">
            <input type="hidden" name ="action" value="add">            
        </form> <br>
        
        <form action="" method="post">
            <c:forEach var="item" items="${sessionScope.items}">
                <input type="radio" name="item" value="${item}">
                <label>${item}</label> <br>
            </c:forEach>
                <input type="submit" value="Delete">
                <input type="hidden" name="action" value="delete">
        </form>    
    </body>
</html>
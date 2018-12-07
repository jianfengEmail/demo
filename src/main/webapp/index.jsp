<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Index</title>
</head>
<body>
This is index page!
<br/>
<br/>
User:${requestScope.currentUser}
<br/>
<br/>
<c:forEach var="book" items="${bookList}" varStatus="i">
    ${book.title}<br/>
</c:forEach>
</body>
</html>

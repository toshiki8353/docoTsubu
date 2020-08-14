<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
</head>
<body>

<h1>どこつぶメイン</h1>

<c:out value="${loginUser.name }" />さんログイン中
<a href="/docoTsubu/Logout">ログアウト</a>
<p><a href="/docoTsubu/Main">更新</a></p>
<form action="/docoTsubu/Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>

<c:if test="${not empty errorMsg }">
  <p>${errorMsg}</p>
</c:if>
<c:forEach var="mutter" items="${mutterList}">
  <p><c:out value="${mutter.userName}" />:<c:out value="${mutter.text}" /></p>
</c:forEach>


</body>
</html>
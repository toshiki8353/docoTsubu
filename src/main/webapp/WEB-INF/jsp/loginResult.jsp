<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib  prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>どこつぶ</title>
</head>
<body>

<h1>どこつぶログイン</h1>

<c:choose>
  <c:when test="${not empty loginUser}">
    <p>ログインに成功しました</p>
    <p>ようこそ<c:out value="${loginUser.name}" />さん</p>
    <a href="/docoTsubu/Main">つぶやき投稿・閲覧へ</a>
  </c:when>
  <c:otherwise>
    <p>ログインに失敗しました</p>
    <a href="/docoTsubu/">TOPへ</a>
  </c:otherwise>
</c:choose>

</body>
</html>
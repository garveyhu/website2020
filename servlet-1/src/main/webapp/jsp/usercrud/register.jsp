<%--
  Date: 2021/5/5
  Time: 23:35
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
</head>
<body>
<div align="center">
    <h1>用户登录</h1><br>
    <p>
    <form action="/registeruser" method="post">
        用户名:
        <input type="text" name="username"><br><br>
        密&nbsp;&nbsp;&nbsp;码:
        <input type="password" name="password">
        <br><br>
        电&nbsp;&nbsp;&nbsp;话:
        <input type="text" name="mobile_number">
        <br><br>
        <input type="submit">
        &nbsp;&nbsp;&nbsp;
    </form>
    </p>
</div>
</body>
</html>

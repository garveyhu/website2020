<%--
  Date: 2021/5/5
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
    <div class="login" align="center">
        <h1>用户登录</h1><br>
        <p>
        <form action="/getUserDomain" method="post">
            用户名:
            <input type="text" name="username"><br><br>
            密&nbsp;&nbsp;&nbsp;码:
            <input type="password" name="password">
            <br><br>
            <input type="submit">
            &nbsp;&nbsp;&nbsp;
        </form>
            <button onclick="alert('不支持找回密码哦！')">&nbsp;找回密码&nbsp;</button><br><br>
            <button onclick="cc()">没有账户？点击注册</button>
        </p>
    </div>
<script>
    function cc(){location.href='jsp/usercrud/register.jsp';}
</script>
</body>
</html>

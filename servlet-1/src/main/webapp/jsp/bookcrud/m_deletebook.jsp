<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/6
  Time: 3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>m_deletebook</title>
</head>
<body>
<div align="center">
    <h1>创建书籍</h1><br>
    <p>
    <form action="/operationbook" method="post">
        要删除的书名:
        <input type="text" name="bookname"><br><br>

        <input type="text" name="uri" id="uri">

        <input type="submit">
        &nbsp;&nbsp;&nbsp;
    </form>
    <button onclick="geturi()">获取uri</button>
    <br><br>
    </p>
</div>
<script>
    function geturi(){
        var test = window.location.pathname;
        document.getElementById("uri").value=test;
    }
</script>
</body>
</html>

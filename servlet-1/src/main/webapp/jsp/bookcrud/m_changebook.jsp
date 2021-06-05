<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/5/6
  Time: 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>m_changebook</title>
</head>
<body>
<div align="center">
    <h1>修改书籍</h1><br>
    <p>
    <form action="/operationbook" method="post">
        要修改的书名:
        <input type="text" name="oldname"><br><br>
        新书籍号:
        <input type="text" name="id"><br><br>
        新书名:
        <input type="text" name="bookname"><br><br>
        作者:
        <input type="text" name="author"><br><br>
        价格:
        <input type="text" name="price"><br><br>
        备注字段:
        <input type="text" name="remarks"><br><br>
        状态:
        <input type="text" name="sta"><br><br>
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

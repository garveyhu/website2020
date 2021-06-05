<%--
  Date: 2021/5/6
  Time: 1:36
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oops!</title>
    <style>
        body{
            font-family:Microsoft YaHei;
            font-size: 20px;
            background-color: rgb(221, 219, 240);
        }
        .oops-1{
            width: 700px;
            margin: 20px auto;
            text-align: center;
        }
        .oops-22{
            color: rgb(102, 102, 93);
        }

        button {
            width: 300px;
            height: 40px;
            border-width: 0px;
            border-radius: 3px;
            background: #79c79c;
            cursor: pointer;
            outline: none;
            font-family: Microsoft YaHei;
            color: white;
            font-size: 17px;
        }
        button:hover {
            background: #88dd96;
        }
    </style>
</head>
<body>
<div class="oops-1">
    <div class="oops-21">
        <img src="../image/Oops.png" width="350px" />
    </div><br>
    <div class="oops-22">There is a problem with your operation!</div><br>
    <div class="oops-23"><button id="backFlag">BACK TO THE PREVIOUS PAGE</button></div>
</div>

<script>
    var backFlag = document.getElementById('backFlag');
    backFlag.onclick = function(){
        history.back()
    }
</script>
</body>
</html>

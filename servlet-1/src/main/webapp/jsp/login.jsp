<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>login</title>
    <link href="../bootstrap-3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{background: url(../image/6.jpg) no-repeat;background-size:cover;font-size: 16px;}
        input[type="text"],input[type="password"]{padding-left:20px;}
        .login-form{background: rgba(255,255,255,0.3);width:400px;margin:100px auto;}
        .checkbox{padding-left:21px;}
    </style>
</head>
<body>
<div class="container">
    <div class="login-form row">
        <form action="/getUserDomain" method="post" class="form-horizontal col-sm-offset-3 col-md-offset-3 row">
            <h3 class="form-title">Login to your account</h3><br>
            <div class="col-sm-8 col-md-8">
                <div class="form-group">
                    <label>
                        <input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20"/>
                    </label>
                </div><br>
                <div class="form-group">
                    <label>
                        <input class="form-control required" type="password" placeholder="Password" name="password" maxlength="8"/>
                    </label>
                </div>
                <div class="form-group">
                    <label class="checkbox">
                        <input type="checkbox" name="remember" value="1"/>Remember me
                    </label>
                    <hr />
                    <a href="./jsp/usercrud/register.jsp" id="register_btn" class="">Create an account</a>
                </div>
                <div class="form-group">
                    <input type="submit" class="btn btn-success pull-right" value="Login "/>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>login</title>
    <link href="/bootstrap-3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="/js/jquery-3.5.1.js"></script>
    <script src="/bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
        body{background: url(/image/7.jpg) no-repeat;background-size:cover;font-size: 16px;}
        input[type="text"],input[type="password"]{padding-left:20px;}
        .login-form{background: rgba(255,255,255,0.45);width:400px;margin:100px auto;}
        .checkbox{padding-left:21px;}
    </style>
</head>
<body>
<div class="container">
    <div class="login-form row">
        <form class="form-horizontal col-sm-offset-3 col-md-offset-3 row">
            <h3 class="form-title">Logging for yourself</h3><br>
            <div class="col-sm-8 col-md-8">
                <div class="form-group">
                    <input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20"/>
                </div><br>
                <div class="form-group">
                    <label>
                        <input class="form-control required" type="password" placeholder="Password" name="password" maxlength="8"/>
                    </label>
                </div><br>
                <div class="form-group">
                    <label>
                        <input class="form-control required" type="text" placeholder="Number" name="mobile_number" maxlength="11"/>
                    </label>
                </div>
                <div class="form-group">
                    <hr />
                </div>
                <div class="form-group">
                    <input type="button" class="btn btn-success col-md-offset-3" value="Logging" onclick="logging_user()"/>
                </div>
            </div>
        </form>
    </div>
</div>

<!-- 模态框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">注册成功！</h4>
            </div>
            <div class="modal-body" id="logging-body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" onclick="back()">返回</button>
            </div>
        </div>
    </div>
</div>

<script>
    function logging_user(){
        let username = $("input[name='username']").val();
        let password = $("input[name='password']").val();
        let mobile_number = $("input[name='mobile_number']").val();
        $.ajax({
            type:"POST",// 传数据的方式
            url:"/registeruser",// servlet的地址
            data: {"username":username,"password":password,"mobile_number":mobile_number}, //传的数据form表单里面的数据
            success:function (data) {
                if (data=="error"){
                    window.location.href = "../jsp/error.jsp"
                }
                else{
                    $('#logging-body').text(data);
                    $('#myModal').modal('show');
                }
            }
        })
    }
    function back(){
        window.location.href="/jsp/login.jsp"
    }
</script>
</body>
</html>

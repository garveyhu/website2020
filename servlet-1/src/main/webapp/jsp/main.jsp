<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset='UTF-8'" />
    <title>main</title>
    <link href="../bootstrap-3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <script src="../js/main.js" charset="UTF-8" type="text/javascript" ></script>
    <style>
        body{
            background: url(../image/4.jpg) no-repeat;font-size: 16px;
        }
        .panel-oc{
            opacity: 0.8;
        }
        .modal-footer,.modal-header,.modal-body{
            text-align: center;
        }
        .btn.btn-success{
            width: 100px;
        }
        .modal-content{
            background: url(../image/ears.png) rgba(156, 216, 186, 0.9);background-size:cover;
        }
    </style>
</head>
<body>
<div class="panel-group panel-oc" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Query books
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <div class="row"><!--表单Query books-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Dear reader</h3>
                                <p>Please enter the book you want to inquire:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="inquire-form">
                                <div class="form-group">
                                    <label class="sr-only" for="inquire-bookname"></label>
                                    <input type="text" name="bookname" placeholder="bookname..." class="form-username form-control" id="inquire-bookname" >
                                </div>
                                <!-- 按钮触发模态框 -->
                                <button type="button" id="inquire-btn" onclick="inquire_register()" >Get it!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Borrow books
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
                <div class="row"><!--表单Borrow books-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Dear reader</h3>
                                <p>Please enter the book you want to borrow:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="borrow-form">
                                <div class="form-group">
                                    <label class="sr-only" for="borrow-bookname">Username</label>
                                    <input type="text" name="bookname" placeholder="bookname..." class="form-username form-control" id="borrow-bookname">
                                </div>


                                <!-- 按钮触发模态框 -->
                                <button type="button" id="borrow-btn" onclick="borrow_register()">Get it!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    Return books
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
                <div class="row"><!--表单Return books-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Dear reader</h3>
                                <p>Please enter the book you want to return:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="return-form">
                                <div class="form-group">
                                    <label class="sr-only" for="return-bookname">bookname...</label>
                                    <input type="text" name="bookname" placeholder="Username..." class="form-username form-control" id="return-bookname">
                                </div>
                                <button type="button" id="return-btn" onclick="return_register()">Get it!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 模态框0-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">养心莫善寡欲，至乐无如读书。</h4>
            </div>
            <div class="modal-body" id="inquire_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- 模态框1-->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel1">养心莫善寡欲，至乐无如读书。</h4>
            </div>
            <div class="modal-body" id="borrow_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- 模态框2-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel2">养心莫善寡欲，至乐无如读书。</h4>
            </div>
            <div class="modal-body" id="return_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

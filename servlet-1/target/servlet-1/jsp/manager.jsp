<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset='UTF-8'" />
    <title>main</title>
    <link href="../bootstrap-3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.5.1.js"></script>
    <script src="../bootstrap-3.4.1/js/bootstrap.min.js"></script>
    <script src="../js/manager.js" charset="UTF-8" type="text/javascript" ></script>
    <style>
        body{
            background: url(../image/5.jpg) no-repeat;font-size: 16px;
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
                    Delete User
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <div class="row"><!--表单Delete User-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Administrator</h3>
                                <p>Please enter the user you want to delete:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="delete_user_form">
                                <div class="form-group">
                                    <label class="sr-only" for="delete_user"></label>
                                    <input type="text" name="username" placeholder="Username..." class="form-username form-control" id="delete_user" >
                                </div>
                                <!-- 按钮触发模态框 -->
                                <button type="button" id="delete_user_btn" onclick="f_delete_user()" >Get it!</button>
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
                    Append Book
                </a>
            </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
                <div class="row"><!--表单Append Book-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Administrator</h3>
                                <p>Please enter the book you want to append:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="append_book_form">
                                <div class="form-group">
                                    <label class="sr-only" for="append_book1">Username</label>
                                    <input type="text" name="id" placeholder="Id..." class="form-username form-control" id="append_book1">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="append_book2">Username</label>
                                    <input type="text" name="bookname" placeholder="Bookname..." class="form-username form-control" id="append_book2">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="append_book3">Username</label>
                                    <input type="text" name="author" placeholder="Author..." class="form-username form-control" id="append_book3">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="append_book4">Username</label>
                                    <input type="text" name="price" placeholder="Price..." class="form-username form-control" id="append_book4">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="append_book5">Username</label>
                                    <input type="text" name="remarks" placeholder="Remarks..." class="form-username form-control" id="append_book5">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="append_book6">Username</label>
                                    <input type="text" name="sta" placeholder="Sta..." class="form-username form-control" id="append_book6">
                                </div>

                                <!-- 按钮触发模态框 -->
                                <button type="button" id="append_book_btn" onclick="f_append_book()">Get it!</button>
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
                    Delete Book
                </a>
            </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
                <div class="row"><!--表单Delete book-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Administrator</h3>
                                <p>Please enter the book you want to delete:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="delete_book_form">
                                <div class="form-group">
                                    <label class="sr-only" for="delete_book"></label>
                                    <input type="text" name="bookname" placeholder="Bookname..." class="form-username form-control" id="delete_book">
                                </div>
                                <button type="button" id="delete_book_btn" onclick="f_delete_book()">Get it!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFour">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    Modify Book
                </a>
            </h4>
        </div>
        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
            <div class="panel-body">
                <div class="row"><!--表单Modify Book-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Administrator</h3>
                                <p>Please enter the book you want to modify:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="modify_book_form">
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book0"></label>
                                    <input type="text" name="oldname" placeholder="Oldname..." class="form-username form-control" id="modify_book0">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book1"></label>
                                    <input type="text" name="id" placeholder="Id..." class="form-username form-control" id="modify_book1">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book2"></label>
                                    <input type="text" name="bookname" placeholder="Bookname..." class="form-username form-control" id="modify_book2">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book3"></label>
                                    <input type="text" name="author" placeholder="Author..." class="form-username form-control" id="modify_book3">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book4"></label>
                                    <input type="text" name="price" placeholder="Price..." class="form-username form-control" id="modify_book4">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book5"></label>
                                    <input type="text" name="remarks" placeholder="Remarks..." class="form-username form-control" id="modify_book5">
                                </div>
                                <div class="form-group">
                                    <label class="sr-only" for="modify_book6"></label>
                                    <input type="text" name="sta" placeholder="Sta..." class="form-username form-control" id="modify_book6">
                                </div>
                                <button type="button" id="modify_book_btn" onclick="f_modify_book()">Get it!</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingFive">
            <h4 class="panel-title">
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                    Query Book
                </a>
            </h4>
        </div>
        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
            <div class="panel-body">
                <div class="row"><!--表单Query Book-->
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Administrator</h3>
                                <p>Please enter the book you want to query:</p>
                            </div>
                            <div class="form-top-right">
                            </div>
                        </div>
                        <div class="form-bottom">
                            <form role="form" id="query_book_form">
                                <div class="form-group">
                                    <label class="sr-only" for="query_book"></label>
                                    <input type="text" name="bookname" placeholder="Bookname..." class="form-username form-control" id="query_book">
                                </div>
                                <button type="button" id="query_book_btn" onclick="f_query_book()">Get it!</button>
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
            <div class="modal-body" id="delete_user_body"></div>
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
            <div class="modal-body" id="append_book_body"></div>
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
            <div class="modal-body" id="delete_book_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- 模态框3-->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel3">养心莫善寡欲，至乐无如读书。</h4>
            </div>
            <div class="modal-body" id="modify_book_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!-- 模态框4-->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel4">养心莫善寡欲，至乐无如读书。</h4>
            </div>
            <div class="modal-body" id="query_book_body"></div>
            <div  class="modal-footer">
                <button type="button" class="btn btn-success" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

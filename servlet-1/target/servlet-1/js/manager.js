function f_delete_user(){
    let username=$("#delete_user").val();
    $.ajax({
        type:"POST",// 传数据的方式
        url:"m_deleteuser",// servlet的地址
        data: {"username":username}, //传的数据form表单里面的数据
        success:function (data) {
            $('#delete_user_body').text(data);
            $('#myModal').modal('show');
        }
    })
}
function f_append_book(){
    let id = $("#append_book1").val();
    let bookname=$("#append_book2").val();
    let author = $("#append_book3").val();
    let price = $("#append_book4").val();
    let remarks = $("#append_book5").val();
    let sta = $("#append_book6").val();
    let origin = "append_book";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"id":id,"bookname":bookname,"author":author,"price":price,"remarks":remarks,"sta":sta,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {
            $('#append_book_body').text(data);
            $('#myModal1').modal('show');
        }
    })
}
function f_delete_book(){
    let bookname=$("#delete_book").val();
    let origin = "delete_book";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"bookname":bookname,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {
            $('#delete_book_body').text(data);
            $('#myModal2').modal('show');
        }
    })
}
function f_modify_book(){
    let oldname = $("#modify_book0").val();
    let id = $("#modify_book1").val();
    let bookname=$("#modify_book2").val();
    let author = $("#modify_book3").val();
    let price = $("#modify_book4").val();
    let remarks = $("#modify_book5").val();
    let sta = $("#modify_book6").val();
    let origin = "modify_book";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"oldname":oldname, "id":id,"bookname":bookname,"author":author,"price":price,"remarks":remarks,"sta":sta,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {
            $('#modify_book_body').text(data);
            $('#myModal3').modal('show');
        }
    })
}
function f_query_book(){
    let bookname=$("#query_book").val();
    let origin = "inquire";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"bookname":bookname,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {//传数据成功之后的操作
            if (data!=="empty"){
                $('#query_book_body').text(data);
                $('#myModal4').modal('show');
            }
            else {
                alert("Please input the correct bookname!");
                window.location.href = "../jsp/error.jsp";
            }

        }
    })}



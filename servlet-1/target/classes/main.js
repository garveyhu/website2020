function inquire_register(){
    let bookname=$("#inquire-bookname").val();
    let origin = "inquire";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"bookname":bookname,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {//传数据成功之后的操作
            if (data!=="empty"){
                $('#inquire_body').text(data);
                $('#myModal').modal('show');
            }
            else {
                alert("Please input the correct bookname!");
                window.location.href = "../jsp/error.jsp";
            }

        }
    })
}


function borrow_register(){
    let bookname=$("#borrow-bookname").val();
    let origin = "borrow";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"bookname":bookname,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {
            $('#borrow_body').text(data);
            $('#myModal1').modal('show');
        }
    })
}

function return_register(){
    let bookname=$("#return-bookname").val();
    let origin = "return";
    $.ajax({
        type:"POST",// 传数据的方式
        url:"operationbook",// servlet的地址
        data: {"bookname":bookname,"origin":origin}, //传的数据form表单里面的数据
        success:function (data) {
            $('#return_body').text(data);
            $('#myModal2').modal('show');
        }
    })
}
<?php
$id = $_POST['id'];
    // 去数据库中比配数据，是否有传递的用户名和密码
    $con = mysqli_connect('localhost','root','123456','xm');

    // 整体SQL语句用双引号引起来，字段 和 表明用反引号引起来，字符串和变量用单引号，数字直接写
    $sql = "SELECT * FROM  `car` where `carid` ='$id' ";
    
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库链接错误' . mysqli_error($con));
    }
   
    $arr = array();
    $row = mysqli_fetch_assoc($res);

    $num = ++$row['carnum'];
    $updata = "UPDATE `car` SET `carnum` = '$num' WHERE  `carid` = '$id'";

    $upres = mysqli_query($con,$updata);

    print_r(json_encode(array('code'=> $upres,'msg'=>"添加成功")));
?>
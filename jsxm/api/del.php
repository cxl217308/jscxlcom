<?php
$id = $_POST['id'];
    // 去数据库中比配数据，是否有传递的用户名和密码
    $con = mysqli_connect('localhost','root','123456','xm');

    // 整体SQL语句用双引号引起来，字段 和 表明用反引号引起来，字符串和变量用单引号，数字直接写
    $sql = "DELETE   FROM `car` where `carid` ='$id' ";
    
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库链接错误' . mysqli_error($con));
    }
   
    $arr = array();
    $row = mysqli_fetch_assoc($res);

    while($row){
        array_push($arr,$row);
        $row = mysqli_fetch_assoc($res);
    }
    // 如果没有查询到值 $arr 为空数组
    print_r(json_encode($arr,JSON_UNESCAPED_UNICODE));
?>
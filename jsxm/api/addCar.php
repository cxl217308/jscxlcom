<?php
$id = $_POST['id'];
$name = $_POST['name'];
$imgs = $_POST['imgs'];
$color = $_POST['color'];
$ccun = $_POST['ccun'];
$price = $_POST['price'];

$con = mysqli_connect('localhost','root','123456','xm');

 // 整体SQL语句用双引号引起来，字段 和 表明用反引号引起来，字符串和变量用单引号，数字直接写
 $sql = "INSERT INTO car (carid,carname,carimgs,carcolor,carccun,carprice) VALUES ('$id','$name','$imgs','$color','$ccun','$price')" ;
 
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
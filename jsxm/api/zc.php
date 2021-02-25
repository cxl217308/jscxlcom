<?php
$user = $_POST['username']; 
$pass = $_POST['password'];
$con = mysqli_connect('localhost','root','123456','cxl');
//查询
$sql = "SELECT *  FROM `user` WHERE `username` = '$user' AND `password` = '$pass'";
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
if($arr){
    print_r('用户已存在请登录');
}else{
    //新增
    $sqls = "INSERT INTO `user` ( username,password) VALUES('$user','$pass')";
$res2 = mysqli_query($con,$sqls);
    print_r('注册成功请登录');
}
?>
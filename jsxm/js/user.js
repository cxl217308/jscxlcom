window.onload=function(){
window.onscroll = function(ev) {
  var heightY = $(document).scrollTop();
  if (heightY > 50) {
    $("#imgs").css({
      height: "300px"
    });
  }
  if (heightY > 100) {
    $("#imgs").css({
      height: "200px"
    });
  }
  if (heightY > 200) {
    $("#imgs").css({
      height: "100px"
    });
    $("#nav1").css("display", "block");
  }
  if (heightY > 250) {
    $("#imgs").css({
      height: "0px"
    });
    $("#nav1").css("display", "none");
    $("#nva2").css("background-color", "rgba(0, 14, 34, 0.9)");
  }
  if (heightY < 50) {
    $("#imgs").css({
      height: "450px"
    });
  }
};
//
$('#comezc').click(function(){
    window.location.href="register.html"; 
})
//
function rand(min,max) {
  return Math.floor(Math.random()*(max-min))+min;
}
$('#signin').on('click','.hq',function(){
  let randnum=rand(1000,9999);
  $('#hq').attr('placeholder',randnum)
 })
$('#signin').on('click','#dl',function(){
  let username = $('#username').val();
  let password = $('#password').val();
  $.post("../api/signin.php",{username:username,password:password},function(data){
    this.data = JSON.parse(data);  
    if(this.data.code==1|| $('#hq').val()==$('.sr').val()){
      alert('登陆成功'); 
      location.href='../index.html';
    }
  });


  
})
//登录验证
$('#singinyz').validate({
    rules: {
        
        username: {
            required: true,
        },
        password: {
            required: true
        },
    },
    messages: {
        username: {
            required: '用户名是必须填写',
            
        },
        password: '密码也是必须填写的',
    },
    submitHandler: function () {   
    }
});
//注册验证
jQuery.validator.addMethod('testTel', function (value) {
    // 方法中必须返回布尔值
    // value 就是你验证这个输入框输入的内容
    let reg = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
    if (reg.test(value)) {
        return true
    }
    return false
}, '密码必须包含数字和字母长度6-18');

$('#registeryz').validate({
    rules: {
        
        username: {
            required: true,
            rangelength:[2,4]
        },
       
        password: {
            required: true,
            testTel: true
        },
        password1: {
            required: true,
            equalTo: "#password"
        }
    },
    messages: {
        username: {
            required: '用户名是必须填写',
            rangelength:'用户名长度为2-4',   
        },
        password: {
            required:'密码也是必须填写的',
            testTel:'密码必须包含数字和字母长度6-18'
        }
    },
    submitHandler: function () {   
    }
})

$('#huiz').click(function(){
  window.location.href='../index.html'
})

//点击登录传数据
$('#shang').click(function(){
  $("html , body").animate({ scrollTop : 0 } , 1000); 
})
$('.zc').click(function(){
 
  let username = $('#username').val();
  let password = $('#password').val();
  $.post("../api/zc.php",{username:username,password:password},function(data){
    this.data = data;  
    console.log(this.data);
    if(this.data=='注册成功请登录'){
      alert('注册成功'); 
      location.href='../html/signin.html';
    }
  });
})
}
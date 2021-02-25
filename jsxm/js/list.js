window.onload=function(){
    window.onscroll = function(ev) {
        var heightY = $(document).scrollTop();
        
        if (heightY > 200) {
          $("#nav1").css("display", "block");
        }
        if (heightY > 250) {
          $("#nav1").css("display", "none");
          $("#nva2").css("background-color", "rgba(0, 14, 34, 0.9)");
        }
        if (heightY <240) {
            $("#nav1").css("display", "block");
            $("#nva2").css("background-color", "rgba(244, 244, 244, 0.35)");
          }
      };
//
$('#gwc').click(function() {
  $('#cart').css("display", "block")
 } )
 $('#cha').click(function() {
  $('#cart').css("display", "none")
 } )
$('#wd').click(function() {
if($('#sinlog').is(':hidden')){
  $('#sinlog').show();
}else{
  $('#sinlog').hide(); 
}
})
$('#tzdl').click(function() {
window.location.href='../html/signin.html'
})
$('#tzzc').click(function() {
  window.location.href='../html/register.html'
})

//
let lb = document.getElementById('lb')
$.get("../api/list.php",function(data){
  this.data = JSON.parse(data);
  renden(this.data);
});
function renden(datas){
  
  let str = "";
  datas.forEach(function(item){
     str += `
     <div id="lbs"  >
               <img src="${item.imgs}" alt="">
               <p>${item.name}</p>
               <span style=" background-color:${item.color} " id="colors"></span><span style=" background-color:${item.color2} ;margin-left: 20px" id="colors2"></span><br>
               <span>${item.colorname}</span> <span  style="margin-left: 20px">${item.colorname2}</span>
               <p>￥${item.price}</p>
               <a href="../html/details.html?id=${item.id}">详情</a>
            </div>
     `
  })
  lb.innerHTML=str
}
//跳转详情页面

  

$("#pxa").mouseover(function(){
  $("#px div").css("display","block");
});

//排序
$('#gd').click(function() {
  $("#px div").css("display","none");
  $.get("../api/gaodi.php",function(data){
    this.data = JSON.parse(data);
    renden(this.data);
  });
})
$('#dg').click(function() {
  $("#px div").css("display","none");
  $.get("../api/digao.php",function(data){
    this.data = JSON.parse(data);
    renden(this.data);
  });
})
//筛选
$('#djscreen').click(function(){
  $("#screen").css("display","block");
})

$('#cha1').click(function(){
  $("#screen").css("display","none");
})
$('#yc').click(function(){
  $("#screen").css("display","none");
})

$('#yy').click(function(){
  let aaa = $( "#test").val()
  $.post("../api/screen.php",{ colors:aaa },function(data1){
    this.data1 = JSON.parse(data1);
    renden(this.data1);
  });
})
$('#shang').click(function(){
  $("html , body").animate({ scrollTop : 0 } , 1000); 
})
}




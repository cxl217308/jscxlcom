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
window.location.href='./html/signin.html'
})
$('#tzzc').click(function() {
  window.location.href='./html/register.html'
})
//
// arrayObject.slice(start,end)
let sbxd = document.getElementById('sbxd')
$.get("./api/homelist.php",function(data){
  this.data = JSON.parse(data);
  this.data =this.data.slice(0,4)
  console.log(this.data);
  renden(this.data);
});
function renden(datas){
 
  
  let str = "";
  datas.forEach(function(item){
     str += `
     <div id="lbs"  >
               <img src="${item.imgs}" alt="">
               <p>${item.name}</p>
               <span style=" background-color:${item.color} " id="colors">
               <span style="width:60px;display:block;  margin-top: 20px">${item.colorname}</span> 
               <p style="width:40px">${item.price}</p>
            </div>
     `
  })
  sbxd.innerHTML=str
}

let sbxl = document.getElementById('sbxl')
$.get("./api/homelist.php",function(data){
  this.data = JSON.parse(data);
  this.data =this.data.slice(4,8)
  console.log(this.data);
  rendens(this.data);
});
function rendens(datas){
 
  
  let str = "";
  datas.forEach(function(item){
     str += `
     <div id="lbs"  >
               <img src="${item.imgs}" alt="">
               <p>${item.name}</p>
               <span style=" background-color:${item.color} " id="colors"><br>
               <span style="width:60px;display:block;  margin-top: 10px">${item.colorname}</span> 
               <p style="width:40px">${item.price}</p>
            </div>
     `
  })
  sbxl.innerHTML=str
}
$('#shang').click(function(){
  $("html , body").animate({ scrollTop : 0 } , 1000); 
})
}

window.onload = function() {
  let reg = /id=(\d+)/;
  if (!reg.test(location.search)) {
    location.href = "../html/list.html";
  }
  var id = reg.exec(location.search)[1];
  let details = document.getElementById("details");
  // 根据id获取数据
  $.post("../api/details.php", { id: id }, function(data) {
    this.data = JSON.parse(data);

    renderHtml(this.data);
    addcar(this.data);
  });

  function renderHtml(data) {
    details.innerHTML = `
        <div id="detailstop">
        <div id="detailstopa">
            <span> 《 </span>
            <img src="${data[0].imgs}" alt="">
            <span> 》 </span>
        </div>
        <div id="detailstopb">
            <div id="btop">
                <span>${data[0].name}</span> <span>￥ ${data[0].price}</span>
            </div>
            <div id="bxxi">
                <p style="width: 60px">
                    <span>颜色：</span>
                    <span id="colors"  style=" background-color:${data[0].color} "></span>
                </p>
                <p style="width: 138px">
                    <span>尺码：</span>
                    <span class="cm"><a href="" style="background-color: rgba(0, 14, 34, 0.9)">${data[0].ccun1}</a> <a
                            href="">${data[0].ccun2}</a></span>
                </p>
                <p style="width: 80px">
                    <span>尺寸指南</span>
                    <img src="../imgs/chi.PNG" alt="" id="chi">
                </p>
            </div>
            <div id="bdzhi">
                <span>+ 定制贺卡￥ 0</span>
            </div>
            <div id="bbtn">
                <button class="dl" id="tzdl">立即购买</button>
            </div>
            <div id="bfoot">
                <p><i></i> <span> 顺丰包邮</span></p>
                <p><i></i> <span> 免息分期</span></p>
                <p><i></i> <span> 正品保障</span></p>
            </div>
        </div>  
    </div> 
    <div id="bnav">
        <a href="">商品展示</a>
        <a href="">搭配灵感</a>
        <a href="">商品参数</a>
        <a href="">服务说明</a>
    </div>
    <hr style="color: #ccc">
     <div id="bimgs">
        <p  style="background-image: url(${data[0].imgs1}) "></p>
        <p  style="background-image: url(${data[0].imgs2}) "></p>
        <p  style="background-image: url(${data[0].imgs3}) "></p>
        <p  style="background-image: url(${data[0].imgs4}) "></p>
     </div> 
           `;
  }
  $("#nav1").on("click", "h2", function() {
    window.location.href = "../index.html";
  });
  function addcar(data) {
    $("#details").on("click", "#tzdl", function() {
        
      $.post(
        "../api/addCar.php",
        {
          name: data[0].name,
          imgs: data[0].imgs,
          id: data[0].id,
          color: data[0].color,
          ccun: data[0].ccun1,
          price: data[0].price,       
        },
        function(datas) {
          this.datas = datas
          console.log(this.datas);
          
        }
      );
    });
  }
  $('#gwc').click(function(){
    $('#cart') .css("display", "block") 
  })
  $('#cha').click(function(){
    $('#cart') .css("display", "none") 
  })

  //
 
  var cartcenter = document.getElementById('cartcenter');
  $.get("../api/car.php", function(data1) {
      this.data1 = JSON.parse(data1);
      console.log(this.data1);
      
      car(this.data1)
     del(this.data1)
     jia(this.data1)
     jian(this.data1)
     zonghe(this.data1)
    });
  function car(data1){
      let str = "";
      data1.forEach(function(item){
         str += `
         <div id="cars">
         <div id="carimg"><img src="${item.carimgs}" alt=""></div>
         <div id="carzl">
             <span>
             ${item.carname}
             </span>
             <span>${item.carnum}X${item.carprice}  </span>
             <span> ${item.carccun}</span>
         </div>
         <div id="carmove">
             <p><img src="../imgs/sc.PNG" alt="" id="removes"></p>
             <span id="jia">+</span>
             <span>${item.carnum}</span>
             <span id="jian">-</span>
         </div>
     </div>
         `
      })
      cartcenter.innerHTML=str
}
//
function del(data2){
 var removes = document.querySelectorAll('#removes')

 removes.forEach(function(item,index){
item.onclick=function(){
for(var i = 0;i<data2.length;i++){
 var id = data2[index].carid
 $.post(
      "../api/del.php",
       {
       id:id
      },
       function(datas) {
        this.datas = datas
      console.log(this.datas);
        
      }
    );
}
}
 })
}
//点击加
function jia(data3){
  var jia = document.querySelectorAll('#jia');
 
  jia.forEach(function(item,index){
 item.onclick=function(){
 for(var i = 0;i<data3.length;i++){
  var id = data3[index].carid
  $.post(
       "../api/jia.php",
        {
        id:id
       },
        function(data3) {
         this.data3 = data3
       console.log(this.data3);    
       }
     );
 }
 }
  })
 }
 //
 function jian(data4){
  var jian = document.querySelectorAll('#jian');
 
  jian.forEach(function(item,index){
 item.onclick=function(){
 for(var i = 0;i<data4.length;i++){
  var id = data4[index].carid
  $.post(
       "../api/jian.php",
        {
        id:id
       },
        function(data4) {
         this.data4 = data4
       console.log(this.data3);    
       }
     );
 }
 }
  })
 }
 //总和
 var zjia = document.getElementById('zjia')
 function zonghe(data5){
   let res = 0;
   data5.forEach(function(item){
  res+=parseInt(item.carprice)*parseInt(item.carnum);
   })
   zjia.innerHTML=res+'￥'
 }

 $('#shang').click(function(){
  $("html , body").animate({ scrollTop : 0 } , 1000); 
})
};

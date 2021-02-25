$.get("../api/pb.php",function(data){
    this.data = JSON.parse(data);
    renden(this.data);
  });
function renden(data){
    var img = [];
   data.forEach(function(item){
      img.push(item.imgs)
   }) 
 
   var all = document.getElementsByClassName("all")[0];
   var num = 4;
   var total = 50;
   //初始创建50张图片
   createEle(total);
   window.onload = function (ev) {
     //给50张图片设置定位
       setPosition(0)
    //获取页面的高并赋值
       var maxHeight = getMaxHeight(total);
       all.style.height = maxHeight+"px";
   }
   function createEle(newTotal) {
   //创建对象函数
       for(var i=newTotal-50;i<newTotal;i++){
           var image = document.createElement("img");
           image.src = img[Math.floor((Math.random()*num))];
           image.setAttribute("class","smallimg");//image.className = "smalling"
           all.appendChild(image);
       }
   }
   window.onresize = function(){
   //页面伸缩事件
       if(document.documentElement.clientWidth<=900){
           num=5;
           all.style.width = "540px";
       }
       else{
           num=4;
           all.style.width = "1090px";
       }
       setPosition(0)
   }
   
   function setPosition(start) {
   //设置图片定位函数
       for(var i=start;i<all.children.length;i++){
           console.log(all.children[i].offsetHeight+"....");
           all.children[i].style.left = ((i%num)*310)+"px";
           if(i>=num){
               all.children[i].style.top = (all.children[(i-num)].offsetHeight+10+all.children[(i-num)].offsetTop)+"px";
           }
           else{
               all.children[i].style.top= "0px";
           }
       }
   }
   function getMaxHeight(newTotal) {
   //在创建完所有图片后获取all的最后十个子元素，并比较其自身高与距离顶部的高
       var max=0
       for(var i=newTotal-4;i<newTotal;i++){
          var temp = all.children[i].offsetTop+all.children[i].offsetHeight
           if(temp>max){
               max = temp
           }
       }
       console.log(max)
       return max
   }
   this.addEventListener("scroll",function (evt) {
       if(document.documentElement.clientHeight+this.scrollY>=document.body.offsetHeight-20){
           total = total+50;
           createEle(total);
           setPosition(total-50)
           all.style.height = getMaxHeight(total)+"px";
       }
     
   })
   
   $('#shang').click(function(){
    $("html , body").animate({ scrollTop : 0 } , 1000); 
  })
}

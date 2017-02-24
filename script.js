//console.log("hi");
var url;
document.addEventListener("click", function(){
  var x = event.clientX;
  var y = event.clientY;
  var coords = "X coords: " + x + ", Y coords: " + y;
  console.log(coords);
});
var user=
[{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/index.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/2.html",
  percentage : 70
},
{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/3.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/4.html",
  percentage : 60
},
{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/5.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/6.html",
  percentage : 50
},
{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/7.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/8.html",
  percentage : 40
},
{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/9.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/10.html",
  percentage : 30
},
{
  name: "visitor",
  from_url : "file:///Users/Maruthi/Documents/photon-631168781/11.html",
  to_url : "file:///Users/Maruthi/Documents/photon-631168781/12.html",
  percentage : 20
}

]
//console.log(user.from_url+" "+user.to_url +" " +user.percentage);
var current_loc=window.location.href;
if(localStorage.getItem("from_url")==undefined)
{
localStorage.setItem("from_url",current_loc);
console.log(current_loc);
for(var i=0;i<user.length;i++)
{
  var n=user[i].from_url.localeCompare(current_loc);
  console.log(n);
  if(n==0)
  {
    var k=i;
    break;
  }
}






var a=Math.floor((Math.random() * 100) + 1);

if(a<=user[k].percentage)
{
  console.log(a);
  url=user[k].from_url;
   location.href = url;
  localStorage.setItem("to_url",url);
   window.stop();

}
else {
  console.log(a);
  url=user[k].to_url;
  location.href = url;
  localStorage.setItem("to_url",url);

}
console.log(localStorage.getItem("to_url"));
}
else {
  var t=localStorage.getItem("from_url");
  var u=t.localeCompare(current_loc);

  if(u==0)
  {
    console.log("u is "+u);
    console.log(localStorage.getItem("to_url"));
    window.location.href=localStorage.getItem("to_url");

  }
  else {
    console.log(current_loc);
    for(var i=0;i<user.length;i++)
    {
      var n=user[i].from_url.localeCompare(current_loc);
      console.log(n);
      if(n==0)
      {
        var k=i;
        break;
      }
    }




    var a=Math.floor((Math.random() * 100) + 1);

    if(a<=user[k].percentage)
    {
      console.log(a);
      url=user[k].from_url;
       location.href = url;
      localStorage.setItem("to_url",url);


    }
    else {
      console.log(a);
      url=user[k].to_url;
      location.href = url;
      localStorage.setItem("to_url",url);

    }
    console.log(localStorage.getItem("to_url"));


  }

}

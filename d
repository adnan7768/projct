<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Birthday Surprise</title>

<style>

body{
margin:0;
font-family:Arial;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(45deg,#ff4b6e,#ff758c);
color:white;
text-align:center;
overflow:hidden;
}

.container{
max-width:500px;
}

button{
padding:15px 25px;
border:none;
border-radius:30px;
background:white;
color:#ff4b6e;
font-size:18px;
cursor:pointer;
margin-top:20px;
}

.hidden{
display:none;
}

.heart{
position:absolute;
bottom:-10px;
font-size:20px;
animation:float 6s linear infinite;
}

@keyframes float{
0%{transform:translateY(0);}
100%{transform:translateY(-100vh);}
}

</style>
</head>

<body>

<div class="container">

<h1>🎂 Happy Birthday ❤️</h1>

<p>
Even though we are far apart,  
I made something special for you.
</p>

<button onclick="show()">Open Surprise</button>

<div id="msg" class="hidden">

<h2>💌 My Message</h2>

<p>
You are the most special person in my life.  
Distance doesn't change how much you mean to me.  

Happy Birthday ❤️
</p>

</div>

</div>

<script>

function show(){
document.getElementById("msg").style.display="block"
}

function heart(){
let h=document.createElement("div")
h.className="heart"
h.innerHTML="❤️"
h.style.left=Math.random()*100+"vw"
document.body.appendChild(h)

setTimeout(()=>h.remove(),6000)
}

setInterval(heart,300)

</script>

</body>
</html>

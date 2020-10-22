<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" content="width=device-width, initial-scale=1">
<title>Noble Star</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body id="body_index">

	<div class="relative">
		<img src="/images/noblestarlogo.jpg" style="width : 100px;height : 100px;cursor:pointer" onclick="window.location.href = '/';">
	</div>
	<div class="absolute1">
		<form action="askme" method="post">
        <input type="submit" value="->Ask Me Anything?">
        </form>	
        </div>
	<div class="absolute2">
		<button class="dropbtn">My Account &#10082</button>
  		<div class="content">
  		<a href="/login">Login</a>
  		<a href="/profile">Profile</a>
  		<a href="/logout">Logout</a>
  		</div>
        </div>
	
	<ul id="lista1">
		<li><a href="/onlineappointment">Online Appointment</a></li>
		<li><a href="/report">Reports</a></li>
		<li><a href="/department">Departments</a></li>
		<li><a href="/offer">Offers</a></li>
		<li><a href="/aboutus">About Us</a></li>
		<li><a href="/contactus">Contact Us</a></li>
	</ul>

<br>

	<div class="slideshow" >
		<img class="mySlides" src="/images/lab.jpg" style="width : 100%;height : 600px;margin-left :auto;margin-right : auto;"> 
		<img class="mySlides" src="/images/reportingroom.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto"> 
		<img class="mySlides" src="/images/digitalxray.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto">
		<img class="mySlides" src="/images/m.r.i.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto">
		<img class="mySlides" src="/images/ctscan.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto">
		<img class="mySlides" src="/images/cardioneuro.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto">
		<img class="mySlides" src="/images/ultrasound.jpg" style="width : 100%;height : 600px;margin-left: auto;margin-right : auto">
	
	<button class="button display-left" onclick="plusDivs(-1)">&#10094;</button>
    <button class="button display-right" onclick="plusDivs(1)">&#10095;</button>  
	</div>
	<br>
	<script>
var myIndex = 0;
var slideIndex = 1;
carousel();

function plusDivs(n) {
	  showDivs(slideIndex += n);
	}

function carousel() {
  var j;
  var y = document.getElementsByClassName("mySlides");
  for (j = 0; j < y.length; j++) {
    y[j].style.display = "none";  
  }
  myIndex++;
  slideIndex++;
  if (myIndex > y.length) {myIndex = 1}    
  y[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000); 
}

function showDivs(n) {
	  var i;
	  var x = document.getElementsByClassName("mySlides");
	  if (n > x.length) {slideIndex = 1}
	  if (n < 1) {slideIndex = x.length}
	  myIndex=slideIndex-1;
	  for (i = 0; i < x.length; i++) {
	    x[i].style.display = "none";  
	  }
	  x[slideIndex-1].style.display = "block";  
	}

</script>

<div id="os">
<h1 style="text-align: center">Our Services</h1>
<hr>

<div class="col">
<h2><a href="/aboutus">Advanced Radiology</a></h2>
<ul>
<li><a href="/aboutus">Whole Body High Tech Advanced M.R.I.</a></li>
<li><a href="/aboutus">Whole Body Multi Slice,Low Dose,High Speed(Most Safe) CT Scan</a></li> 
<li><a href="/aboutus">Whole Body UltraSound</a></li>
<li><a href="/aboutus">Sonomammography Small Parts UltraSound TransRectal(TRUS) & TransVaginal(TVS)</a></li>
<li><a href="/aboutus">Vascular Color Doppler</a></li>
<li><a href="/aboutus">Digital X-Ray(C.R. & D.R.)</a></li>
<li><a href="/aboutus">OPG</a></li>
<li><a href="/aboutus">Interventional Diagnostic & Therapeutic Procedures</a></li>
</ul>
</div>

<div class="col">
<h2><a href="/aboutus">Advanced Pathology</a></h2>
<ul>
<li><a href="/aboutus">Full Body Biochemistry Analyzers Histopathology,Cytopathology,FNAC,Biopsy</a></li>
<li><a href="/aboutus">MicroBiology</a></li>
<li><a href="/aboutus">Hematology</a></li>
</ul>
</div>

<div class="col">
<h2><a href="/aboutus">Advanced Cardiology</a></h2>
<ul>
<li><a href="/aboutus">2D-ECHO & Carotid Colour Doppler</a></li>
<li><a href="/aboutus">Computerized ECG</a></li>
<li><a href="/aboutus">PFT</a></li>
</ul>
</div>

<div class="col">
<h2><a href="/aboutus">Advanced Neurology</a></h2>
<ul>
<li><a href="/aboutus">EGG With Brain Mapping,EMG,NCV,EP/VP/VERA</a></li>
</ul>
</div>

<div class="col">
<h2><a href="/aboutus">Advanced Education</a></h2>
<ul>
<li><a href="/aboutus">Research & Training</a></li>
</ul>
</div>

</div>

<br>

<div id="conus" style="background-color: silver;">
<h1>Contact Us</h1>
<hr>
<p> <b>Time : </b> Monday-Saturday : 8am to 7pm Sunday : 8am to 2pm</p> <p> <b>Address : </b> Noble Star Diagnostic & Interventional Center B32, 82 M, Tomson Ln, near Help Line Hospital, Rashmi Nagar Colony, Saket Nagar Colony, Lanka, Varanasi, Uttar Pradesh 221005 </p> <p> <b>Contact : </b> 0542-2368566,7839076724,7897333538 </p> <p> <Strong>Email : </Strong> noblestarindia@gmail.com</p>
</div>
</body>
</html>
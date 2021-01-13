<%-- 
    Document   : home
    Created on : Feb 15, 2018, 11:37:14 AM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <style>
body {font-family: Arial, Helvetica, sans-serif;
     
}

.slider{
	width: 640px; /*Same as width of the large image*/
	position: relative;
	/*Instead of height we will use padding*/
	padding-top: 320px; /*That helps bring the labels down*/
	
	margin: 100px auto;
	
	/*Lets add a shadow*/
	box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.75);
}


/*Last thing remaining is to add transitions*/
.slider>img{
	position: absolute;
	left: 0; top: 0;
	transition: all 0.5s;
}

.slider input[name='slide_switch'] {
	display: none;
}

.slider label {
	/*Lets add some spacing for the thumbnails*/
	margin: 18px 0 0 18px;
	border: 3px solid #999;
	
	float: left;
	cursor: pointer;
	transition: all 0.5s;
	
	/*Default style = low opacity*/
	opacity: 0.6;
}

.slider label img{
	display: block;
}

/*Time to add the click effects*/
.slider input[name='slide_switch']:checked+label {
	border-color: #666;
	opacity: 1;
}
/*Clicking any thumbnail now should change its opacity(style)*/
/*Time to work on the main images*/
.slider input[name='slide_switch'] ~ img {
	opacity: 0;
	transform: scale(1.1);
}
/*That hides all main images at a 110% size
On click the images will be displayed at normal size to complete the effect
*/
.slider input[name='slide_switch']:checked+label+img {
	opacity: 1;
	transform: scale(1);
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
  <img src="img/logo.gif" alt="logo" style="width:10%" align="left">
  <img src="img/H.jpg" alt="logo" style="width:10%" align="right">
  <center>
      <hr>
          <h2>Administration: <%=(String)session.getAttribute("userid")%><h2>
    <hr>
    
    
    <div class="slider" style=" margin-top:1%">
	<input type="radio" name="slide_switch" id="id1"/>
	<label for="id1">
		<img src="img/a1.jpg" width="100"/>
	</label>
	<img src="img/a1.jpg"/>
	
	<!--Lets show the second image by default on page load-->
	<input type="radio" name="slide_switch" id="id2" checked="checked"/>
	<label for="id2">
		<img src="img/a2.jpg" width="100"/>
	</label>
	<img src="img/a2.jpg"/>
	
	<input type="radio" name="slide_switch" id="id3"/>
	<label for="id3">
		<img src="img/a3.jpg" width="100"/>
	</label>
	<img src="img/a3.jpg"/>
	
	<input type="radio" name="slide_switch" id="id4"/>
	<label for="id4">
		<img src="img/a4.jpg" width="100"/>
	</label>
	<img src="img/a4.jpg"/>
	
	<input type="radio" name="slide_switch" id="id5"/>
	<label for="id5">
		<img src="img/a5.jpg" width="100"/>
	</label>
	<img src="img/a5.jpg"/>
</div>
</div>
  </center>
   
    </body>
</html>

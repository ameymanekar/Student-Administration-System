<%-- 
    Document   : form
    Created on : Mar 12, 2018, 10:07:03 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Registration Page</title>
	<meta name="keywords" content="General Application Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- stylesheets -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all">
	
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Alegreya+Sans:100,100i,300,300i,400,400i,500,500i,700,700i,800,800i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

</head>
<body>
	<div class="w3ls-banner">
	<div class="heading">
		<h1>Student Registration</h1>
	</div>
		<div class="container">
			<div class="agile-form">
				<form action="addmissionadd.jsp">
					<ul class="field-list">
						<li class="name">
							<label class="form-label"> Name <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="text" pattern="[A-Z a-z]+" name="name" placeholder="Full Name" required>
								
							</div>
						</li>
						<li> 
							<label class="form-label"> E-Mail Address <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="email" name="email"  placeholder="Mail@example.com" required>
							
							</div>
						</li>
						<li> 
							<label class="form-label"> Phone Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="contactno"  pattern="[1,2,3,4,5,6,7,8,9,0]{10}" title="Input Numbers upto 10 Digits" placeholder="Phone Number" maxlength="10" required >
							</div>
						</li>
                                                <li> 
							<label class="form-label"> Aadhaar Number <span class="form-required"> * </span></label>
							<div class="form-input">
								<input type="text" name="addrno" pattern="[1,2,3,4,5,6,7,8,9,0]{12}"title="Input Numbers upto 12 Digits" placeholder="Aadhaar Number" maxlength="12" required >
							</div>
						</li>
						<li>
							<label class="form-label"> Gender <span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="gender" required>
									<option value="">Gender</option>
									<option value="Male"> Male </option>
									<option value="Female"> Female </option>
									
								</select>
							</div>
						</li>
						<li>
							<label class="form-label"> Course<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="course" required>
                                                                    <option value="">Course</option>
									<option value="BCA I">BCA I</option>
  <option value="BCA II">BCA II</option>
  <option value="BCA III">BCA III</option>
   <option value="BSC I">BSC I</option>
  <option value="BSC II">BSC II</option>
  <option value="BSC III">BSC III</option>
   <option value="BBA I">BBA I</option>
  <option value="BBA II">BBA II</option>
  <option value="BBA III">BBA III</option>
								</select>
							</div>
						</li>
                                                <li>
							<label class="form-label"> Category:Caste<span class="form-required"> * </span></label>
							<div class="form-input">
								<select class="form-dropdown" name="cast" required>
									 <option value="">CASTE</option>
  <option value="OPEN">OPEN</option>
  <option value="OBC">OBC</option>
  <option value="SC">SC</option>
   <option value="NT">NT</option>
								</select>
							</div>
						</li>
                                                <li>
							<label class="form-label"> Fees <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="number" style="width: 98%; height: 30px;"  placeholder="Enter Fees" name="fees" required>
								
							</div>
						</li>
                                                
                                                  <li>
							<label class="form-label"> Fees Paid <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="number" style="width: 98%; height: 30px;" placeholder="Enter Fees Paid" name="feespaid" required>  
								
							</div>
						</li>
						<li>
							<label class="form-label"> Date of Birth <span class="form-required"> * </span></label>
							<div class="form-input">
								
                                                            <input type="date" placeholder="" name="DOB" style="width: 98%; height: 30px;"  required> 
								
							</div>
						</li>
                                                <li>
							<label class="form-label"> Addmission Date <span class="form-required"> * </span></label>
							<div class="form-input">
								
									<input type="date" placeholder="" name="joindate" style="width: 98%; height: 30px;"  required> 
								
							</div>
						</li>
						
					</ul>
					<div class="submit_btn">
						<input type="submit" value="Submit">
                                               </div>
                                   
				</form>	
			</div>
		</div>
		
		
	</
</body>
</html>
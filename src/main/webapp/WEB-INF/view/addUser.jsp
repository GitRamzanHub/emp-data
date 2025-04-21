<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/commonStyle.css">
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<!-- SweetAlert2 CSS -->
	<link href="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.0/dist/sweetalert2.min.css" rel="stylesheet">
	<!-- SweetAlert2 JS -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.7.0/dist/sweetalert2.all.min.js"></script>
	
<title>Add New User</title>
</head>
	<body>
		<div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
	        <div class="card login-card">
	            <div class="card-body">
	                <h5 class="login-title">Register</h5>
	                <form action="${pageContext.request.contextPath}/addUser" method="post">
	                    <div class="mb-3">
	                        <label for="username" class="form-label" style="font-size: 14px;">Username</label>
	                        <input type="text" class="form-control form-control-sm" id="username" name="username">
	                    </div>
	                    <div class="mb-3">
	                        <label for="password" class="form-label" style="font-size: 14px;">Password</label>
	                        <input type="password" class="form-control form-control-sm" id="password" name="password">
	                    </div>
	                         
	                    <div class="mb-3">
	                        <label for="password" class="form-label" style="font-size: 14px;">Email</label>
	                        <input type="email" class="form-control form-control-sm" id="email" name="password" >
	                    </div>
	                    
	                    <!-- selecting role for user -->
	                    <div class="mb-3">
	                    	<label for="formType" class="form-label mb-0" style="font-size: 14px;">User Type:</label>
	                        <select class="form-select form-select-sm" id="userRole">
								<option value="A">Admin</option>
								<option value="U">User</option>
							</select>
	                    </div>
	                    
	                    <div class="form-label mt-3 " style="font-size: 12px; text-align: right;" >
			            	<a href="${pageContext.request.contextPath}/#">Forgot Password</a>
			            </div>
	                    <div class="d-grid gap-2">
	                        <button type="submit" class="btn btn-login btn-sm" onclick="addNewUser()">Register</button>
	                    </div>
	                </form>
	                 <div class="form-label mt-3 " style="font-size: 12px; text-align: right;" >
		            	<a href="${pageContext.request.contextPath}/home">Already Register? Login</a>
		            </div>
	            </div>
	           
	        </div>
	    </div>
	    
	    <script type="text/javascript">
	    	
	    function addNewUser(){
    		let userName = $('#username').val() || '';
    		let password = $('#password').val() || '';
    		let email = $('#email').val() || '';
    		let userRole = $('#userRole').val() || '';
    		
    		if(userName === ''){
    			setAlert("Please entery username!", 'Warning');
    			return;
    		}
    		if(password === ''){
    			setAlert("Please entery the password!", 'Warning');
    			return;
    		}
    		if(email === ''){
    			setAlert("Please enter the emial!", 'Warning');
    			return;
    		}
    		if(userRole === ''){
    			setAlert("Please select the user role!", 'Warning');
    			return;
    		}
    		console.log("Calling add user ajax call to save the user")
    		
    		
    	}
	    	
		    function setAlert(message, type){
		    	let color = type === 'Error' ? 'red' :
		              type === 'Success' ? 'green' :
		              type === 'Warning' ? '#ffb100' : 'black';
		
				Swal.fire({
					title: '<span style="color: ' + color + ';">' + type + '</span>',
					html: message,
					showConfirmButton: true,
					customClass: {
						confirmButton: 'swalCustomBtn',
					}
				});		    		
		    }
	    
	    </script>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/commonStyle.css">

    <title>Login</title>
</head>

	<body>
	    <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
	        <div class="card login-card">
	            <div class="card-body">
	                <h5 class="login-title">Login</h5>
	                <form action="${pageContext.request.contextPath}/login" method="post">
	                    <div class="mb-3">
	                        <label for="username" class="form-label">Username</label>
	                        <input type="text" class="form-control form-control-sm" id="username" name="username" required>
	                    </div>
	                    <div class="mb-3">
	                        <label for="password" class="form-label">Password</label>
	                        <input type="password" class="form-control form-control-sm" id="password" name="password" required>
	                    </div>
	                    <div class="form-label mt-3 " style="font-size: 12px; text-align: right;" >
			            	<a href="${pageContext.request.contextPath}/#">Forgot Password</a>
			            </div>
	                    <div class="d-grid gap-2">
	                        <button type="submit" class="btn btn-login btn-sm">Login</button>
	                    </div>
	                </form>
	                 <div class="form-label mt-3 " style="font-size: 12px; text-align: right;" >
		            	<a href="${pageContext.request.contextPath}/addUser">New user? Register</a>
		            </div>
	            </div>
	           
	        </div>
	    </div>
	   
	    <!-- Optional JavaScript; choose one of the two! -->
	    <!-- Option 1: Bootstrap Bundle with Popper -->
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
	
	</body>

</html>
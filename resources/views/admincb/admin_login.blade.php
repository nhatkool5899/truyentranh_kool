<?php
    // $user_id = Session::get('user_id');
    //     if($user_id){
    //         header('admin');
    //     }
?>
<!DOCTYPE html>
<head>
<title>Trang quản lí Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="{{asset('public/back-end/css/style2.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('public/back-end/css/style-responsive.css')}}" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="css/font.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="js/jquery2.0.3.min.js"></script>
</head>
<body>
	<div class="log-w3">
		<div class="w3layouts-main">
			<h2>Đăng nhập</h2>
			<h2>Trang quản trị</h2>
			<?php
			$message = Session::get('message');
			if($message){
				echo $message;
				session()->put('message', null);
			}
			?>
				<form action="{{URL::to('/admin-dashboard')}}" method="post">
					{{ csrf_field() }}
					<input type="email" class="ggg" name="admin_email" placeholder="E-MAIL" required="">
					<input type="password" class="ggg" name="admin_password" placeholder="PASSWORD" required="">
						<div class="clearfix"></div>
						<input type="submit" value="Đăng nhập" name="login">
				</form>
				{{-- <p>Don't Have an Account ?<a href="registration.html">Create an account</a></p> --}}
		</div>
	</div>
	<script src="{{asset('public/back-end/js/bootstrap.js')}}"></script>
	<script src="{{asset('public/back-end/js/jquery.dcjqaccordion.2.7.js')}}"></script>
	<script src="{{asset('public/back-end/js/scripts.js')}}"></script>
	<script src="{{asset('public/back-end/js/jquery.slimscroll.js')}}"></script>
	<script src="{{asset('public/back-end/js/jquery.nicescroll.js')}}"></script>
	<script src="{{asset('public/back-end/js/jquery.scrollTo.js')}}"></script>
</body>
</html>

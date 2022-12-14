<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Visitors an Admin Panel Category Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Visitors Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="{{asset('public/back-end/css/bootstrap.min.css')}}" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="{{asset('public/back-end/css/style2.css')}}" rel='stylesheet' type='text/css' />
<link href="{{asset('public/back-end/css/style-responsive.css')}}" rel="stylesheet"/>
<link href="{{asset('public/back-end/css/style_dashboard.css')}}" rel="stylesheet"/>
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="{{asset('public/back-end/css/font.css')}}" type="text/css"/>
<link href="{{asset('public/back-end/css/font-awesome.css')}}" rel="stylesheet"> 
<link rel="stylesheet" href="{{asset('public/back-end/css/morris.css')}}" type="text/css"/>
<!-- calendar -->
<link rel="stylesheet" href="{{asset('public/back-end/css/monthly.css')}}">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<!-- //calendar -->
<!-- //font-awesome icons -->
<script src="{{asset('public/back-end/js/jquery2.0.3.min.js')}}"></script>
<script src="{{asset('public/back-end/js/raphael-min.js')}}"></script>
<script src="{{asset('public/back-end/js/morris.js')}}"></script>
</head>
<body id="body-admin">
<section id="container">
<!--header start-->
<header class="header fixed-top clearfix">
<!--logo start-->
<div class="brand">
    <a href="index.html" class="logo">
        DEV ADMIN
    </a>
    <div class="sidebar-toggle-box">
        <div class="fa fa-bars"></div>
    </div>
</div>

<div class="top-nav clearfix">
    <!--search & user info start-->
    <ul class="nav pull-right top-menu">
        <li>
            <input type="text" class="form-control search" placeholder=" Search">
        </li>
        <!-- user login dropdown start-->
        <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <img alt="" src="{{asset('public/back-end/images/2.png')}}">
                <span class="username">
					<?php
					$admin_name = Session::get('admin_name');
					if($admin_name){
						echo $admin_name;
					}
					?>
				</span>
                <b class="caret"></b>
            </a>
            <ul class="dropdown-menu extended logout">
                <li><a href="#"><i class=" fa fa-suitcase"></i>H??? s?? c?? nh??n</a></li>
                <li><a href="#"><i class="fa fa-cog"></i> C??i ?????t</a></li>
                <li><a href="{{URL::to('/logout')}}"><i class="fa fa-key"></i> ????ng xu???t</a></li>
            </ul>
        </li>
        <!-- user login dropdown end -->
       
    </ul>
    <!--search & user info end-->
</div>
</header>
<!--header end-->
<!--sidebar start-->
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="{{URL::to('/dashboard')}}">
                        <i class="fa fa-dashboard"></i>
                        <span>T???ng quan</span>
                    </a>
                </li>

                {{-- <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-file-text" aria-hidden="true"></i>
                        <span>????n h??ng</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL::to('/manage-order')}}">Qu???n l?? ????n h??ng</a></li>
                    </ul>
                </li> --}}
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-bars"></i>
                        <span>Qu???n l?? danh m???c truy???n</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('danhmuc-admin.create')}}">Th??m danh m???c</a></li>
						<li><a href="{{route('danhmuc-admin.index')}}">Li???t k?? danh m???c</a></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-suitcase"></i>
                        <span>Qu???n l?? truy???n</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('truyen.create')}}">Th??m truy???n</a></li>
						<li><a href="{{route('truyen.index')}}">Li???t k?? truy???n</a></li>
                    </ul>
                </li>

				<li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-code"></i>
                        <span>Qu???n l?? Chapter</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{route('chapter.create')}}">Th??m Chapter</a></li>
						<li><a href="{{route('chapter.index')}}">Li???t k?? Chapter</a></li>
                    </ul>
                </li>

				{{-- <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-suitcase"></i>
                        <span>S???n ph???m</span>
                    </a>
                    <ul class="sub">
						<li><a href="{{URL::to('/add-product')}}">Th??m s???n ph???m</a></li>
						<li><a href="{{URL::to('/all-product')}}">Li???t k?? c??c s???n ph???m</a></li>
                    </ul>
                </li> --}}
                
            </ul>           
        </div>
        <!-- sidebar menu end-->
    </div>
</aside>
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
	<section class="wrapper">
        @yield('admin_content')
	</section>
</section>
 <!-- footer -->
		  {{-- <div class="footer">
			<div class="wthree-copyright">
			  <p>?? 2017 Visitors. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
			</div>
		  </div> --}}
  <!-- / footer -->
</section>
<!--main content end-->
</section>
<script src="{{asset('public/back-end/js/bootstrap.js')}}"></script>
<script src="{{asset('public/back-end/js/jquery.dcjqaccordion.2.7.js')}}"></script>
<script src="{{asset('public/back-end/js/scripts.js')}}"></script>
<script src="{{asset('public/back-end/js/jquery.slimscroll.js')}}"></script>
<script src="{{asset('public/back-end/js/jquery.nicescroll.js')}}"></script>
<script src="{{asset('public/back-end/js/jquery.scrollTo.js')}}"></script>
<script src="{{asset('public/back-end/ckeditor/ckeditor.js')}}"></script>
<script src="{{asset('public/back-end/js/jquery.validate.js')}}"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<!-- morris JavaScript -->	

<script>
    $( function() {
        $( "#datepicker" ).datepicker({
            prevText: "Th??ng tr?????c",
            nextText: "Th??ng sau",
            dateFormat: "yy-mm-dd",
            duration: "slow"
        });
        $( "#datepicker2" ).datepicker({
            prevText: "Th??ng tr?????c",
            nextText: "Th??ng sau",
            dateFormat: "yy-mm-dd",
            duration: "slow"
        });
    } );
</script>

<script>
    $(document).ready(function(){
        chart30daysorder();
        var chart = new Morris.Area({
            element: 'myfirstchart',
    
            lineColors: ['#819c79', '#fc8710', '#ff6541', '#a4add3', '#766856'],
    
            pointFillColors: ['#fff'],
            pointStrokeColors: ['#000'],
            fillOpacity: 0.6,
            hideHover: 'auto',
            parseTime: false,
    
            xkey: 'period',
            ykeys: ['order', 'sales', 'profit', 'quantity'],
            behaveLikeLine: true,
            labels: ['????n h??ng', 'doanh s???', 'l???i nhu???n', 's??? l?????ng']
        });
    
        function chart30daysorder(){
            var _token = $('input[name="_token"]').val();
            $.ajax({
            url: '{{url('/dates-order')}}',
            method: 'POST',
            dataType: "JSON",
            data:{_token:_token},
    
            success:function(data){
                chart.setData(data);
            }
    
        });
        }

        $('#btn-dashboard-filter').click(function(){
        var _token = $('input[name="_token"]').val();
        var from_date = $('#datepicker').val();
        var to_date = $('#datepicker2').val();
        $.ajax({
            url: '{{url('/filter-by-date')}}',
            method: 'POST',
            dataType: "JSON",
            data:{from_date:from_date,to_date:to_date,_token:_token},

            success:function(data){
                chart.setData(data);
            }

            });
        });

        $('.dashboard-filter').change(function(){
        var dashboard_value = $(this).val();
        var _token = $('input[name="_token"]').val();
        // alert(dashboard_value);

        $.ajax({
            url: '{{url('/dashboard-filter')}}',
            method: 'POST',
            dataType: "JSON",
            data:{dashboard_value:dashboard_value,_token:_token},

            success:function(data){
                chart.setData(data);
            }

            });
        });
    });

</script>

<script>

   
</script>

<script>
    CKEDITOR.replace('ckeditor');
    CKEDITOR.replace('ckeditor1');
</script>
<script type="text/javascript">
    $('.update-qty-order').click(function(){
        var order_product_id = $(this).data('product_id');
        var order_qty = $('.order-qty-'+order_product_id).val();
        var order_id = $('.order_id').val();
        var _token = $('input[name="_token"]').val();
        
        $.ajax({
                url: '{{url('/update-pd-qty-order')}}',
                method: 'POST',
                data:{order_product_id:order_product_id, order_qty:order_qty, order_id:order_id, _token:_token},
                success:function(){
                    alert('C???p nh???t th??nh c??ng');
                    location.reload();
                }
            });

    });
</script>
<script type="text/javascript">
//-------Delivery------------------
    $(document).ready(function(){
        fetch_delivery(); 
        function fetch_delivery(){
            var _token = $('input[name="_token"]').val();

            $.ajax({
                url: '{{url('/select-feeship')}}',
                method: 'POST',
                data:{_token:_token},
                success:function(data){
                    $('#load-delivery').html(data);
                }
            });
        }
        $(document).on('keypress', '.feeship-edit', function(event){
            var feeship_id = $(this).data('feeship_id');
            var feeship_value = $(this).text();
            var keycode = (event.keyCode ? event.keyCode : event.which);
            if (keycode == '13') {
                $.ajax({
                    url: '{{url('/update-delivery')}}',
                    methd: 'GET',
                    data:{feeship_id:feeship_id, feeship_value:feeship_value},
                    success:function(data){
                        alert('C???p nh???t th??nh c??ng');
                        fetch_delivery();
                    }
                });
            }
        });
        //----------------Th??m ph?? v???n chuy???n---------------
        $('.add-delivery').click(function(){
            var city = $('.city').val();
            var province = $('.province').val();
            var wards = $('.wards').val();
            var fee_ship = $('.fee_ship').val();
            var _token = $('input[name="_token"]').val();

            $.ajax({
                url: '{{url('/insert-delivery')}}',
                method: 'POST',
                data:{city:city, province:province, wards:wards, fee_ship:fee_ship, _token:_token},
                success:function(data){
                    alert('Th??m ph?? v???n chuy???n th??nh c??ng');
                    fetch_delivery();
                }
            });
        });

        $('.choose').on('change',function(){
            var action = $(this).attr('id');
            var ma_id = $(this).val();
            var _token = $('input[name="_token"]').val();
            var result = '';
            if(action == 'city'){
                result = 'province';
            }else{
                result = 'wards';
            }
            $.ajax({
                url: '{{url('/select-delivery')}}',
                method: 'POST',
                data:{action:action, ma_id:ma_id, _token:_token},
                success:function(data){
                    $('#'+result).html(data);
                }
            });
        });
    });
</script>

<script type="text/javascript">
        //--------X??? l?? ????n h??ng--------------
        $('.result_order_details').click(function(){
            var order_status = $('.select_order_details').val();
            var order_id = $('.select_order_details').children(":selected").attr("id");
            var _token = $('input[name="_token"]').val();

            //L???y ra qty
            quantity = [];
            $("input[name='product_quantity']").each(function(){
                quantity.push($(this).val())
            });
            //L???y ra id
            order_product_id = [];
            $("input[name='order_product_id']").each(function(){
                order_product_id.push($(this).val())
            });

            // for (let i = 0; i < order_product_id.length; i++) {
            //     alert(order_product_id[i]);
                
            // }

            $.ajax({
                url: '{{url('/update-order-product-qty')}}',
                method: 'POST',
                data:{order_status:order_status, order_id:order_id, quantity:quantity, order_product_id:order_product_id, _token:_token},
                success:function(){
                    alert('C???p nh???t th??nh c??ng');
                    location.reload();
                }
            });
        });
</script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
	   jQuery('.small-graph-box').hover(function() {
		  jQuery(this).find('.box-button').fadeIn('fast');
	   }, function() {
		  jQuery(this).find('.box-button').fadeOut('fast');
	   });
	   jQuery('.small-graph-box .box-close').click(function() {
		  jQuery(this).closest('.small-graph-box').fadeOut(200);
		  return false;
	   });
	   
	    //CHARTS
	    function gd(year, day, month) {
			return new Date(year, month - 1, day).getTime();
		}
		
		graphArea2 = Morris.Area({
			element: 'hero-area',
			padding: 10,
        behaveLikeLine: true,
        gridEnabled: false,
        gridLineColor: '#dddddd',
        axes: true,
        resize: true,
        smooth:true,
        pointSize: 0,
        lineWidth: 0,
        fillOpacity:0.85,
			data: [
				{period: '2015 Q1', iphone: 2668, ipad: null, itouch: 2649},
				{period: '2015 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
				{period: '2015 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
				{period: '2015 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
				{period: '2016 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
				{period: '2016 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
				{period: '2016 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
				{period: '2016 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
				{period: '2017 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
			
			],
			lineColors:['#eb6f6f','#926383','#eb6f6f'],
			xkey: 'period',
            redraw: true,
            ykeys: ['iphone', 'ipad', 'itouch'],
            labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
			pointSize: 2,
			hideHover: 'auto',
			resize: true
		});
		
	   
	});
</script>
<!-- calendar -->
	<script type="text/javascript" src="js/monthly.js"></script>
	<script type="text/javascript">
		$(window).load( function() {

			$('#mycalendar').monthly({
				mode: 'event',
				
			});

			$('#mycalendar2').monthly({
				mode: 'picker',
				target: '#mytarget',
				setWidth: '250px',
				startHidden: true,
				showTrigger: '#mytarget',
				stylePast: true,
				disablePast: true
			});

		switch(window.location.protocol) {
		case 'http:':
		case 'https:':
		// running on a server, should be good.
		break;
		case 'file:':
		alert('Just a heads-up, events will not work when run locally.');
		}

		});
</script>
	<!-- //calendar -->


<script type="text/javascript">
    // Slug auto
    function ChangeToSlug()
        {
            var slug;
            
            //L???y text t??? th??? input title 
            slug = document.getElementById("slug").value;
            slug = slug.toLowerCase();
            //?????i k?? t??? c?? d???u th??nh kh??ng d???u
                slug = slug.replace(/??|??|???|???|??|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'a');
                slug = slug.replace(/??|??|???|???|???|??|???|???|???|???|???/gi, 'e');
                slug = slug.replace(/i|??|??|???|??|???/gi, 'i');
                slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???|??|???|???|???|???|???/gi, 'o');
                slug = slug.replace(/??|??|???|??|???|??|???|???|???|???|???/gi, 'u');
                slug = slug.replace(/??|???|???|???|???/gi, 'y');
                slug = slug.replace(/??/gi, 'd');
                //X??a c??c k?? t??? ?????t bi???t
                slug = slug.replace(/\`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\:|\;|_/gi, '');
                //?????i kho???ng tr???ng th??nh k?? t??? g???ch ngang
                slug = slug.replace(/ /gi, "-");
                //?????i nhi???u k?? t??? g???ch ngang li??n ti???p th??nh 1 k?? t??? g???ch ngang
                //Ph??ng tr?????ng h???p ng?????i nh???p v??o qu?? nhi???u k?? t??? tr???ng
                slug = slug.replace(/\-\-\-\-\-/gi, '-');
                slug = slug.replace(/\-\-\-\-/gi, '-');
                slug = slug.replace(/\-\-\-/gi, '-');
                slug = slug.replace(/\-\-/gi, '-');
                //X??a c??c k?? t??? g???ch ngang ??? ?????u v?? cu???i
                slug = '@' + slug + '@';
                slug = slug.replace(/\@\-|\-\@|\@/gi, '');
                //In slug ra textbox c?? id ???slug???
            document.getElementById('convert_slug').value = slug;
        }
            
</script>    
</body>
</html>

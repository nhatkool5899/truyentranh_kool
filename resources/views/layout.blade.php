<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sách truyện</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <link href="{{ asset('css/animation.css') }}" rel="stylesheet">
        <link href="{{ asset('css/style2.css') }}" rel="stylesheet">
        <link href="{{ asset('css/owl1.carousel.min.css') }}" rel="stylesheet">
        <link href="{{ asset('css/owl.theme.default.min.css') }}" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    </head>
    <body>
        {{-- Header --}}
        <header>
            <div class="header">
                <div class="header__top">
                    {{-- <img src="{{asset('public/front-end/images/header1.PNG')}}" alt=""> --}}
                    <div class="container d-flex">
                        <div class="header__logo">Truyện mới</div>
                        <div class="header__search">
                            <form autocomplete="off" class="d-flex" action="{{url('/search')}}" method="GET">
                                @csrf
                                <input class="form-control me-2" type="search" placeholder="Nhập tên truyện, tác giả.... " aria-label="Search" id="keywords" name="tukhoa">
                                <button class="btn btn-outline-success text-white" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                            </form>
                            <div id="search-ajax">
                                
                            </div>
                        </div>
                        <div class="light"><i class="fa-solid fa-lightbulb"></i></div>
    
                        {{-- Login --}}
                        <div class="box-header row">
                            <div class="col-lg-5">
                                <div class="notice"><i class="fa-solid fa-comment-dots"></i>Thông báo</div>
                            </div>
                            <div class="sign col-lg-7">
                                <div class="login-text">
                                    <span id="login">Đăng nhập</span>
                                    <span id="signup">/Đăng ký</span>
                                </div>
                                <div class="modal-login">
                                    <div class="boxLogin">
                                        <div class="inputBox">
                                            <h2>Đăng nhập</h2>
                                            <p id="icon-close"><i class="fa-solid fa-circle-xmark icon-close"></i></p>
                                            <form action="">
                                                <div class="row mb-3">
                                                    <label class="col-sm-4 col-form-label">Tên đăng nhập</label>
                                                    <div class="col-sm-8">
                                                        <input placeholder="Tên đăng nhập" type="text" class="form-control" name="tendangnhap" value="{{old('tendangnhap')}}" required="required">
                                                        
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label class="col-sm-4 col-form-label">Mật khẩu</label>
                                                    <div class="col-sm-8">
                                                        <input placeholder="Mật khẩu" type="password" class="form-control" name="matkhau" required="required">
                                                        
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary p-2 px-4 offset-sm-4" type="submit" name="login">Đăng nhập</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="modal-signup">
                                    <div class="boxRegister">
                                        <div class="inputBox">
                                            <h2>Đăng ký</h2>
                                            <p id="icon-close2"><i class="fa-solid fa-circle-xmark icon-close"></i></p>
                                            <form action="">
                                                <div class="row mb-3">
                                                    <label for="tendangnhap" class="col-sm-4 col-form-label">Tên đăng nhập</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" class="form-control" id="tendangnhap" name="tendangnhap" value="{{old('tendangnhao')}}" placeholder="Tên đăng nhập">
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label class="col-sm-4 col-form-label">Mật khẩu</label>
                                                    <div class="col-sm-8">
                                                        <input type="password" class="form-control" name="matkhau" placeholder="Mật khẩu">
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label class="col-sm-4 col-form-label">Nhập lại mật khẩu</label>
                                                    <div class="col-sm-8">
                                                        <input type="password" class="form-control" name="nhaplaimatkhau" placeholder="Nhập lại mật khẩu">
                                                    </div>
                                                </div>
                                                <button class="btn btn-primary p-2 px-4 offset-sm-4" type="submit" name="signup">Đăng Ký</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="header__bottom">
                    <nav class="navbar navbar-expand-lg navbar-light" style="padding: 0">
                        <div class="container">
                            <a class="navbar-brand logo" href="{{url('/')}}">Anime</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-uppercase header__bottom-nav">
                                {{-- <li class="nav-item nav-item-style">
                                    <a class="nav-link" aria-current="page" href="#">Hot</a>
                                </li> --}}
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="{{url('/wishlist')}}">Theo dõi</a>
                                </li>
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="{{url('/visited')}}">Lịch sử</a>
                                </li>
                                <li class="nav-item nav-item-style dropdown dropdown-style">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Thể loại
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-style row" aria-labelledby="navbarDropdown" style="width: 350px; text-transform: capitalize">
                                        @foreach ($danhmuc as $key =>$danhmuctruyen)
    
                                        <li class="col-sm-6"><a class="dropdown-item" href="{{url('danhmuc/'.$danhmuctruyen->slug_danhmuc)}}">{{$danhmuctruyen->tendanhmuc}}</a></li>
        
                                        @endforeach
                                        <li><a class="dropdown-item" href="#" style="font-weight:700"><i class="fa-solid fa-align-left" style="margin-right: 6px"></i>Khác</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item nav-item-style dropdown dropdown-style">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Xếp hạng
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-style row" aria-labelledby="navbarDropdown" style="width: 300px">
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-eye"></i>Top all</a></li>
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-eye"></i>Top tuần</a></li>
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-eye"></i>Top tháng</a></li>
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-eye"></i>Top năm</a></li>
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-thumbs-up"></i>Top Like</a></li>
                                        <li class="col-sm-6"><a class="dropdown-item" href="#"><i class="fa-solid fa-refresh"></i>Mới cập nhật</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="{{url('danhmuc/tu-tien')}}">Tu tiên</a>
                                </li>
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="{{url('danhmuc/xuyen-khong')}}">xuyên không</a>
                                </li>
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="#">Chuyển sinh</a>
                                </li>
                                <li class="nav-item nav-item-style dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Quốc gia
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        {{-- <li><a class="dropdown-item" href="{{url('quocgia/.'$quocgia->slug_quocgia)}}">Trung Quốc</a></li> --}}
                                        <li><a class="dropdown-item" href="#">Nhật bản</a></li>
                                        <li><a class="dropdown-item" href="#">Việt Nam</a></li>
                                        <li><a class="dropdown-item" href="#">Trung quốc</a></li>
                                        <li><a class="dropdown-item" href="#">Mỹ</a></li>
                                    </ul>
                                </li>
                               
                                <li class="nav-item nav-item-style">
                                    <a class="nav-link" href="#">Group</a>
                                </li>
                                <li class="nav-item nav-item-style">
                                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Riêng tư</a>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </header>

        <main>

            <div class="message container">
                <span><i class="fa-solid fa-hand-point-right"></i>Hãy nhớ ghé thăm Website của tụi mình thường xuyên nhé. Chúc các bạn đọc truyện vui vẻ <i style="color: #2271c3;animation:swing 2s ease-in-out infinite" class="fa-solid fa-book-open-reader"></i></span> 
            </div>
            {{-- Banner --}}
    
            @yield('banner')
    
            <div class="container main">
    
    
                {{-- Slider --}}
    
                @yield('slider')
    
                <div class="row content-main" style="align-items: flex-start">
    
                    {{-- Main --}}
                    
                    @yield('content')
    
                    <div class="col-lg-3 content-right">
                        <div class="visited-comics">
                            <div class="visited-comics-top">
                                <h2>Lịch sử đọc truyện<i class="fa-solid fa-star"></i></h2>
                                <a href="" class="view-all">Xem tất cả</a>
                            </div>
                            <ul class="visited-comics-list">
                                {{-- <li class="comics-item">
                                    <a href="" class="link-img">
                                        <img src="https://i2.wp.com/doctruyen3qk.com/images/comics/vo-luyen-dinh-phong-1630692177.jpg" alt="" class="comics-img">
                                    </a>
                                    <div class="comics-body">
                                        <h3 class="comics-title">Võ luyện đỉnh phong</h3>
                                        <div class="comics-links">
                                            <a href="" class="link-chapter">
                                                <span>Chapter 20</span>
                                                <i class="fa-solid fa-chevron-right"></i>
                                            </a>
                                            <a href="" class="link-del">
                                                <i class="fa-solid fa-x"></i>
                                                <span>Xóa</span>
                                            </a>
                                        </div>
                                    </div>
                                </li> --}}
                                
                            </ul>
                        </div>
                        

                        {{-- Box-rating --}}
                        @yield('top_rating')

                        <div class="comment-home">
                            <div class="fb-comments" data-href="http://devkool40.com/" data-width="100%" data-numposts="8"></div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <footer class="footer" style="position: relative;top:50px">
            <div class="container">
                <div class="row">
                    <div class="col-sm-3"><img class="mt-3" src="https://i2.wp.com/doctruyen3qk.com/images/comics/bach-luyen-thanh-than-1656669201.jpg" alt=""></div>
                    <div class="col-sm-9">
                        <h4 class="m-4">Từ khóa:</h4>
                        <div class="tagcloud05">
                            <ul>
                                <li><a href="{{url('/tukhoa?tukhoa=truyện tranh')}}"><span>truyện tranh</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=truyện online')}}"><span>truyện online</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=truyện 3d')}}"><span>truyện 3d</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=truyện trắng đen')}}"><span>truyện trắng đen</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=truyện màu')}}"><span>truyện màu</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=tu tiên')}}"><span>tu tiên</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=kiếm hiệp')}}"><span>kiếm hiệp</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=nam chính bá đạo')}}"><span>nam chính bá đạo</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=tiên hiệp')}}"><span>tiên hiệp</span></a></li>
                                <li><a href="{{url('/tukhoa/?tukhoa=trường học')}}"><span>trường học</span></a></li>
                            </ul>
                        </div>
                        <div class="clear"></div>
                        <div class="row m-3">
                            <div class="contact col-sm-4">
                                <h4>Liên hệ</h4>
                                <a href="" class="btn btn-secondary text-white"><i class="fa-brands fa-facebook"></i></a>
                                <a href="" class="btn btn-secondary text-white"><i class="fa-brands fa-instagram"></i></a>
                                <a href="" class="btn btn-secondary text-white"><i class="fa-brands fa-twitter"></i></a>
                            </div>
                            <div class="blog col-sm-4 border-start border-secondary">
                                <h4>Về chúng tôi</h4>
                                <p>Website <a href="{{url('/')}}">Truyện Mới</a> luôn cập nhật và mang lại những trang truyện hay nhất cho độc giả.</p>
                            </div>
                            <div class="policy col-sm-4 border-start border-secondary">
                                <div class="fb-page" data-href="https://www.facebook.com/profile.php?id=100076104369952" data-tabs="timeline" data-width="" data-height="0" data-small-header="true" data-adapt-container-width="true" data-hide-cover="true" data-show-facepile="true"><blockquote cite="https://www.facebook.com/profile.php?id=100076104369952" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/profile.php?id=100076104369952">Nhatkool</a></blockquote></div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="div"><p class="text-center">Copyright © 2022 NhatKool. All Right Reserved</p></div>
                    </div>
                </div>
            </div>
        </footer>

        <div id="fb-root"></div>
        <script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0" nonce="dYoufStU"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.10.4/ScrollTrigger.min.js"></script>
        <script>
            gsap.to("#img",{
                scrollTrigger : {
                    scrub:0.5,
                },
                x: 1500,
                y:400
            });

            gsap.from("#wolf",{
                scrollTrigger : {
                    scrub:0.5,
                },
                x: 250
            })

            gsap.from("#castle",{
                scrollTrigger : {
                    scrub:0.5,
                },
                x: -50
            })

            gsap.from("#bat",{
                scrollTrigger : {
                    scrub:0.5,
                },
                scale: 0.8
            })
            
        </script>

        <!-- Go to www.addthis.com/dashboard to customize your tools -->
    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-62f249606abee2db"></script>

    </body>
</html>



<!-- Scripts -->
<script src="{{ asset('js/app.js') }}"></script>
{{-- <script src="{{ asset('js/style.js') }}"></script> --}}
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/js/all.min.js"></script>
<script>
    $('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    responsiveClass:true,
    responsive:{
        0:{
            items:1,
            nav:true
        },
        600:{
            items:3,
            nav:false
        },
        1000:{
            items:5,
            nav:false,
            loop:true,
            autoplay:true
        }
    }
    })
</script>

{{-- Select Chapter --}}
<script type="text/javascript">
    $('.select-chapter').on('change', function(){
        var url = $(this).val();
        if(url){
            window.location = url;
        }
        return false;
    });

    current_chapter();
    function current_chapter(){
        var url = window.location.href;
        $('select[name="select-chapter"]').find('option[value="'+url+'"]').attr("selected",true);
    }
</script>

{{-- Light --}}

<script>
    $('.light').click(function(){
        $(document.body).toggleClass('switch_color');
    });
</script>

{{-- Search --}}
<script type="text/javascript">
    $('#keywords').keyup(function(){
        var keywords = $(this).val();
        
        if(keywords != ''){
            // alert(keywords);
            var _token = $('input[name="_token"]').val();

            $.ajax({
                url: "{{url("/search-ajax")}}",
                method: "POST",
                data:{keywords:keywords,_token:_token},
                success:function(data){
                    // alert(data);
                    $('#search-ajax').fadeIn();
                    $('#search-ajax').html(data);
                }
            });
        }else{
            $('#search-ajax').fadeOut();
        }
    });
</script>

{{-- LocalStorage --}}

<script>
    // Lịch sử truyện
    show_visited();
    function show_visited(){
        if(localStorage.getItem('visited_comics') != null){
            var data = JSON.parse(localStorage.getItem('visited_comics'));
            data.reverse();

            for (let i = 0; i < 3; i++) {
                var name = data[i].truyenName;
                var img = data[i].img;
                var chapter = data[i].chapterName;
                var url = data[i].chapterUrl;
                
                $('.visited-comics-list').append(`
                    <li class="comics-item">
                        <a href="`+url+`" class="link-img">
                            <img src="{{asset('public/uploads/truyen/`+img+`')}}" alt="`+name+`" class="comics-img">
                        </a>
                        <div class="comics-body">
                            <h3 class="comics-title">`+name+`</h3>
                            <div class="comics-links">
                                <a href="`+url+`" class="link-chapter">
                                    <span>Chapter `+chapter+`</span>
                                    <i class="fa-solid fa-chevron-right"></i>
                                </a>
                                <a href="" class="link-del">
                                    <i class="fa-solid fa-x"></i>
                                    <span>Xóa</span>
                                </a>
                            </div>
                        </div>
                    </li>
                `);
            }
        }else{
            $('.visited-comics-list').append(`<li class="visited-empty"><i>Bạn chưa có truyện vừa đọc ^^!</i></li>`);
        }
    }

    //Theo dõi truyện
    show_wishlist();
    function show_wishlist(){
        if(localStorage.getItem('wishlist_truyen') != null){
            var data = JSON.parse(localStorage.getItem('wishlist_truyen'));
            data.reverse();

            for (let i = 0; i < data.length; i++) {
                var title = data[i].title;
                var img = data[i].img;
                var id = data[i].id;
                var url = data[i].url;
                
                $('#following').append(`
                    <div class="content-item col-lg-3">
                        <div class="body">
                            <div class="image">
                                <a href="`+url+`">
                                    <img src="`+img+`" alt="`+title+`">
                                </a>
                            </div>
                            <div class="view-like">
                                <span class="view"><i class="fa-solid fa-eye"></i>1200</span>
                                <span class="like"><i class="fa-solid fa-heart"></i>22</span>
                            </div>
                            <div class="item-content">
                                <div class="item-title text-center">`+title+`</div>
                                <div class="follow-action text-center">
                                    <div class="fb-like" data-href="`+url+`" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
                                    <div>
                                        <a href="" class="text-danger"><i class="fa-solid fa-x" style="font-size: 12px; margin-right:4px"></i> Bỏ theo dõi</a>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div> 
                `);
            }
        }
    }

    $('.btn-follow').click(function(){
        $('.btn-follow').css('background','#7f2525');
        // $('.btn-followed').css('display','inline-block');

        const id =  $('.wishlist_id').val();
        const title =  $('.wishlist_title').val();
        const img =  $('.img-truyen').attr('src');
        const url =  $('.wishlist_url').val();
        
        const item = {
            'id': id,
            'title': title,
            'img': img,
            'url': url
        };

        if(localStorage.getItem('wishlist_truyen') == null){
            localStorage.setItem('wishlist_truyen','[]');
        }

        var old_data = JSON.parse(localStorage.getItem('wishlist_truyen'));

        var matches = $.grep(old_data,function(obj){
            return obj.id == id;
        });

        if(matches.length){
            alert('Truyện đã có trong danh sách yêu thích');
        }else{
            old_data.push(item);
            localStorage.setItem('wishlist_truyen',JSON.stringify(old_data));
            alert('Theo dõi thành công');
        }
    });
</script>

{{-- Modal login --}}

<script>
    $('#login').click(function(){
        $('.modal-login').addClass('modal-active');
    });
    $('#signup').click(function(){
        $('.modal-signup').addClass('modal-active');
    });
    $('.modal-login').click(function(e){
		if(e.target == e.currentTarget){
			$(this).removeClass('modal-active');
		}
	});
	$('.modal-signup').click(function(e){
		if(e.target == e.currentTarget){
			$(this).removeClass('modal-active');
		}
	});
    $('#icon-close2').click(function(){
        $('.modal-signup').removeClass('modal-active');
    });
    $('#icon-close').click(function(){
        $('.modal-login').removeClass('modal-active');
    });
</script>



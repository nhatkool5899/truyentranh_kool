@extends('../layout')

@section('content')
    <div class="clear"></div>
    <div class="truyen col-lg-9">
        <ul class="navigation m-4">
            <li class="nav-item home"><a href="#">Trang chủ</a></li>
            <li class="nav-item">{{ $truyen->tentruyen }}</li>
        </ul>
        <div class="truyen-content">
            <h2 class="title-truyen">{{ $truyen->tentruyen }}</h2>
            <p class="time-update">Cập nhật lúc 10h</p>
            <div class="info-truyen">
                <div class="row">
                    <div class="col-4">
                        <img class="img-truyen" src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" alt="">
                    </div>
                    <div class="col-8 box-info">
                        <ul class="list-info">
                            <li class="author row">
                                <p class="name col-4"><i class="fa-solid fa-user"></i>Tác giả</p>
                                <p class="col-8">{{ $truyen->tacgia}}</p>
                            </li>
                            <li class="cate row">
                                <p class="name col-4"><i class="fa-solid fa-book-open"></i>Thể loại</p>
                                <p class="col-8"><a href="{{url('danhmuc/'.$truyen->danhmuc->slug_danhmuc)}}">{{ $truyen->danhmuc->tendanhmuc }}</a></p>
                            </li>
                            <li class="status row">
                                <p class="name col-4"><i class="fa-brands fa-audible"></i>Số Chapter</p>
                                <p class="col-8">500</p>
                            </li>
                            <li class="viewer row">
                                <p class="name col-4"><i class="fa-solid fa-eye"></i>Lượt xem</p>
                                <p class="col-8">9,990</p>
                            </li>
                        </ul>
                        <div class="text-short">Truyện được dịch bởi nhóm dịch Avc...</div>
                        <div class="follow">

                            <input type="hidden" class="wishlist_id" value="{{$truyen->id}}">
                            <input type="hidden" class="wishlist_url" value="{{\URL::current()}}">
                            <input type="hidden" class="wishlist_title" value="{{$truyen->tentruyen}}">

                            <button class="btn text-white btn-follow"><i class="fa-solid fa-heart" style="font-size: 12px; margin-right:4px"></i><span>Theo dõi ngay</span></button>
                            <button class="btn text-white btn-followed" style="background: #9f2525;display:none"><i class="fa-solid fa-x" style="font-size: 12px; margin-right:4px"></i><span>Bỏ theo dõi</span></button>
                            <span class="followed"><span class="text-success fw-bold">12599</span> người đã theo dõi</span>
                        </div>
                        <div class="rating">
                            <i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i>
                            <div class="fb-like" data-href="{{\URL::current()}}" data-width="" data-layout="standard" data-action="like" data-size="small" data-share="true"></div>
                        </div>
                        <div class="read-action">
                            <a href="{{url($truyen->slug_truyen.'/chap-'.$first_chapter->chapter)}}" class="btn btn-success">Đọc từ đầu</a>
                            <a href="{{url($truyen->slug_truyen.'/chap-'.$old_chapter->chapter)}}" class="btn btn-success">Đọc mới nhất</a>
                            <a href="" class="btn btn-primary">Đọc tiếp</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="desc-truyen">
                <h2><i class="fa-solid fa-book"></i>Cốt truyện</h2>
                <p>cuộc đời và số phậnn của sở phong, cùng hành trình tìm lại thân phận thật sự của mình</p>
            </div>
            @php
                $count_chapter = count($chapter);
            @endphp
            @if ($count_chapter > 0)
            <div class="list-chapter">
                <h2><i class="fa-solid fa-list"></i>Danh sách chương</h2>
                <div class="row heading">
                    <div class="col-5" style="padding-left: 30px">Số chương</div>
                    <div class="col-4">Cập nhật</div>
                    <div class="col-3" style="padding-left: 0">Lượt xem</div>
                </div>
                <nav>
                    <ul class="show-chapter">

                        @foreach ($chapter as $item =>$value_chapter)

                        <li class="row">
                            <div class="col-5">
                                <a href="{{url($truyen->slug_truyen.'/chap-'.$value_chapter->chapter)}}" class="read-chapter">
                                    Chapter {{ $value_chapter->chapter}}
                                </a>
                            </div>
                            <div class="col-4">{{ $value_chapter->created_at->diffForHumans()}}</div>
                            <div class="col-3">{{ $value_chapter->views}} lượt xem</div>
                        </li>
                            
                        @endforeach
                    </ul>
                </nav>
            </div>
            @else
                <div class="text-bold text-success fs-4 m-4">Truyện hiện tại chưa ra Chapter...</div>
            @endif
        </div>
        <div class="mx-5">
            <div class="fb-like" data-href="{{\URL::current()}}" data-width="" data-layout="standard" data-action="like" data-size="large" data-share="true"></div>
            <div class="fb-comments" data-href="{{\URL::current()}}" data-width="" data-numposts="5"></div>
        </div>
        <div class="type-comment d-flex">
            <div class="all p-2"><span class="ms-4 p-2">5</span>bình luận</div>
            <div class="sort-filter dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    Sắp xếp theo
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="#">Mới nhất</a></li>
                    <li><a class="dropdown-item" href="#">Hàng đầu</a></li>
                    <li><a class="dropdown-item" href="#">Cũ nhất</a></li>
                  </ul>
            </div>
        </div>
        <div class="input-comment m-5">
            <p>Nhập vào bình luận của bạn</p>
            <form action="" method="get">
                <textarea class="border-success" name="comment" id="" cols="80" rows="3"></textarea>
                <button class="btn btn-success">Bình luận</button>
            </form>
        </div>
    </div>
@endsection
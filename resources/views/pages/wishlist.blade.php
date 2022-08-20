@extends('../layout')

{{-- Content --}}
@section('content')
<div class="clear"></div>
<div class="col-lg-9 content-center row">
    <ul class="navigation">
        <li class="nav-item home"><a href="{{url('/')}}">Trang chủ</a></li>
        <li class="nav-item">Theo dõi</li>
    </ul>
    <div class="info-danhmuc mb-5 ">
        <h2>Truyện đang theo dõi</h2>
        <div class="clear"></div>
        <ul class="type">
            <li><a href="" class="btn active">Tất cả</a></li>
            <li><a href="" class="btn">Đang tiến hành</a></li>
            <li><a href="" class="btn">Hoàn thành</a></li>
        </ul>
        <div class="sort">
            <span>Sắp xếp theo:</span>
            <a href="" class="btn">Truyện mới</a>
            <a href="" class="btn">Top all</a>
            <a href="" class="btn">Top tháng</a>
            <a href="" class="btn">Top ngày</a>
        </div>
        
    </div>

    <div id="following" class="row">
        {{-- <div class="content-item col-lg-3">
            <div class="body">
                <div class="image">
                    <a href="#">
                        <img src="https://doctruyen3qk.com/images/comics/co-vuong-qua-nu.jpg" alt="">
                    </a>
                </div>
                <div class="view-like">
                    <span class="view"><i class="fa-solid fa-eye"></i>1200</span>
                    <span class="like"><i class="fa-solid fa-heart"></i>22</span>
                </div>
                <div class="item-content">
                    <div class="follow-action text-center">
                        <div class="fb-like" data-href="{{\URL::current()}}" data-width="" data-layout="button_count" data-action="like" data-size="small" data-share="true"></div>
                        <div>
                            <a href="" class="text-danger"><i class="fa-solid fa-x" style="font-size: 12px; margin-right:4px"></i> Bỏ theo dõi</a>
                        </div>
                    </div>
                    <div class="item-title text-center">Đấu phá thương khung</div>
                    
                </div>
            </div>
        </div> --}}
    </div>        

</div>

@endsection
{{-- Content --}}
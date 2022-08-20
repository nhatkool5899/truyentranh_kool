@extends('../layout')

{{-- Content --}}
@section('content')
<div class="clear"></div>
<div class="col-lg-9 content-center row">
    <ul class="navigation">
        <li class="nav-item home"><a href="{{url('/')}}">Trang chủ</a></li>
        <li class="nav-item"><span>Lịch sử đọc truyện</span></li>
    </ul>
    <div class="info-danhmuc">
        <h2>Lịch sử đọc truyện</h2>
        <p>Lịch sử đọc truyện được lưu khi bạn bắt đầu đọc một Chapter</p>
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

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>

    <script>
        $(document).ready(function(){
            if(localStorage.getItem('visited_comics') == null){
                $('.content-item-null').append(` <h2 class="text-success p-5 border border-primary">Bạn chưa có lịch sử đọc truyện... Đọc ngay nhé nhé ^^!...</h2>`);
            }else{
                var getData = JSON.parse(localStorage.getItem('visited_comics'));

                for (let index = getData.length - 1; index >= 0; index--) {
                    
                    $('.content-item-body').append(`
                    
                    <div class="content-item col-lg-3">
                        <div class="body">
                            <div class="image">
                                <a href="`+getData[index].chapterUrl+`">
                                    <img src="{{asset('public/uploads/truyen/`+getData[index].img+`')}}" alt="`+getData[index].img+`">
                                </a>
                            </div>
                            <div class="visited-action view-like">
                                <a class="like"><i class="fa-solid fa-x"></i>Xóa</a>
                            </div>
                            <div class="item-content">
                                <div class="item-title">`+getData[index].truyenName+`</div>
                                <ul class="item-chapter">
                                    <li>
                                        <a class="reading-chapter" href="`+getData[index].chapterUrl+`">Đọc tiếp Chapter `+getData[index].chapterName+` ></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    `);
                    
                }
            }
        })
    </script>

        <div class="content-item content-item-null">
        </div>

        <div class="content-item-body row">

        </div>
       
</div>

@endsection
{{-- Content --}}
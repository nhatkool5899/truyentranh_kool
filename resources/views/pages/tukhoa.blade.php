@extends('../layout')

{{-- Content --}}
@section('content')
<div class="clear"></div>
<div class="col-lg-9 content-center row">
    <ul class="navigation">
        <li class="nav-item home"><a href="{{url('/')}}">Trang chủ</a></li>
        <li class="nav-item"><a href="/">Từ khóa</a></li>
        <li class="nav-item"><a href="">{{$tukhoa}}</a></li>
    </ul>
    <div class="info-danhmuc">
        <h2>Từ khóa liên quan: <span>{{ $tukhoa }}</span></h2>
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

    @php
        $count = count($truyen);
    @endphp

    @if ($count == 0)
        <div class="content-item">
            <h2 class="text-success p-5 border border-primary">Truyện đang cập nhật... Tìm truyện khác nhé ^^!...</h2>
        </div>

    @else

        @foreach ($truyen as $key =>$value_truyen)
            
        <div class="content-item col-lg-3">
            <div class="body">
                <div class="image">
                    <a href="{{url('truyen-info/'.$value_truyen->slug_truyen)}}">
                        <img src="{{asset('public/uploads/truyen/'.$value_truyen->hinhanh)}}" alt="{{$value_truyen->hinhanh}}">
                    </a>
                </div>
                <div class="view-like">
                    <span class="view"><i class="fa-solid fa-eye"></i>1200</span>
                    <span class="like"><i class="fa-solid fa-heart"></i>22</span>
                </div>
                <div class="item-content">
                    <div class="item-title">{{$value_truyen->tentruyen}}</div>
                    <ul class="item-chapter">
                        @foreach ($data_chapter as $key =>$chap)                

                        @if ($chap['truyen_id'] == $value_truyen->id)
                            <li>
                                <a class="chapter">Chapter {{$chap['chapter']}}</a>
                                <span class="time">{{$chap['created_at']}}</span>
                            </li>
                        @endif
   
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
        @endforeach
    @endif
</div>

@endsection
{{-- Content --}}
@extends('../layout')

{{-- Content --}}
@section('content')
<div class="clear"></div>
<div class="col-lg-9 content-center row">
    <ul class="navigation">
        <li class="nav-item home"><a href="{{url('/')}}">Trang chủ</a></li>
        <li class="nav-item"><a href="{{url('/theloai')}}">Thể loại</a></li>
        <li class="nav-item"><a href="">{{ $slug_danhmuc->tendanhmuc }}</a></li>
    </ul>
    <div class="info-danhmuc">
        <h2>Truyện thể loại <span>{{ $slug_danhmuc->tendanhmuc }}</span></h2>
        <p>Thể loại này thường có nội dung về đánh nhau, bạo lực, hỗn loạn, với diễn biến nhanh {{ $slug_danhmuc->mota }}</p>
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
        $count = count($findTruyen);
    @endphp

    @if ($count == 0)
        <div class="content-item">
            <h2 class="text-success p-5 border border-primary">Truyện đang cập nhật... Xem thể loại khác nhé ^^!...</h2>
        </div>

    @else

        @foreach ($data_truyen as $key =>$value_truyen)
            
        <div class="content-item col-lg-3">
            <div class="body">
                <div class="image">
                    <a href="{{url('truyen-info/'.$value_truyen['slug_truyen'])}}">
                        <img src="{{asset('public/uploads/truyen/'.$value_truyen['hinhanh'])}}" alt="{{$value_truyen['hinhanh']}}">
                    </a>
                </div>
                <div class="view-like">
                    <span class="view"><i class="fa-solid fa-eye"></i>{{number_format($value_truyen['views'],0,',','.')}}</span>
                    <span class="like"><i class="fa-solid fa-heart"></i>22</span>
                </div>
                <div class="item-content">
                    <div class="item-title">{{$value_truyen['tentruyen']}}</div>
                    <ul class="item-chapter">
                        @foreach ($data_chapter as $key =>$chap)                

                        @if ($chap['truyen_id'] == $value_truyen['id'])
                            <li>
                                <a href="{{url($value_truyen['slug_truyen'].'/chap-'.$chap['chapter'])}}" class="chapter">Chapter {{$chap['chapter']}}</a>
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
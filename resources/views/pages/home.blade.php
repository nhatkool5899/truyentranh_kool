@extends('../layout')

@section('banner')
    @include('pages.banner')
@endsection

@section('slider')
    @include('pages.slider')
@endsection

{{-- Content --}}
@section('content')
<div class="title title-animate"><span>Truyện mới cập nhật</span> <i class="fa-solid fa-chevron-right"></i><i style="font-size: 12px;margin-bottom:2px" class="fa-solid fa-chevron-right"></i></div>
<div class="col-lg-9 content-center row">
    @foreach ($truyen as $key => $value_truyen)

    <div class="content-item col-lg-3">
        <div class="body">
            <div class="image">
                <a href="{{url('truyen-info/'.$value_truyen->slug_truyen)}}">
                    <img src="{{asset('public/uploads/truyen/'.$value_truyen->hinhanh)}}" alt="{{$value_truyen->hinhanh}}">
                </a>
            </div>
            <div class="view-like">
                <span class="view"><i class="fa-solid fa-eye"></i>{{number_format($value_truyen->views,0,',','.')}}</span>
                <span class="like"><i class="fa-solid fa-heart"></i>22</span>
            </div>
            <div class="item-content">
                <div class="item-title">{{$value_truyen->tentruyen}}</div>
                <ul class="item-chapter">
                    @foreach ($data_chapter as $key =>$chap)

                        @if ($chap['truyen_id'] == $value_truyen->id)
                            <li>
                                <a href="{{url($value_truyen->slug_truyen.'/chap-'.$chap['chapter'])}}" class="chapter read-chapter">Chapter {{$chap['chapter']}}</a>
                                <span class="time">{{$chap['created_at']}}</span>
                            </li>
                            @if ($value_truyen->status == 1)

                                <div class="new">New</div>
                            
                            @elseif ($value_truyen->status == 2)

                                <div class="hot">Hot</div>
                                
                            @elseif ($value_truyen->status == 3)

                                <div class="see-more"><i class="fa-solid fa-eye"></i></div>

                            @endif
                        @endif
   
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
        
    @endforeach

    {{ $truyen->links(); }}

</div>

@endsection
{{-- Content --}}

@section('top_rating')
    @include('pages.top_rating')
@endsection
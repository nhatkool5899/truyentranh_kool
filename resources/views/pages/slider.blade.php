{{-- Slider --}}

<div class="slider">
    <div class="title title-animate"><span>Truyện đề cử</span> <i class="fa-solid fa-chevron-right"></i><i style="font-size: 12px;margin-bottom:2px" class="fa-solid fa-chevron-right"></i></div>
    <div class="owl-carousel owl-theme">
        @foreach ($slider as $key => $value_slider)

        <div class="item">
            <a href="{{url('truyen-info/'.$value_slider->slug_truyen)}}">
                <img src="{{asset('public/uploads/truyen/'.$value_slider->hinhanh)}}" alt="{{$value_slider->hinhanh}}">
            </a>
            <div class="content text-center">
                <div class="slider-title">
                    {!! Str::limit($value_slider->tentruyen, 22) !!}
                </div>
                @foreach ($data_chapter_slider as $key =>$chap)
                    @if ($chap['truyen_id'] == $value_slider->id)
                        <span class="slider-chapter m-2">Chapter {{$chap['chapter']}}</span>
                        <span class="slider-time m-1"><i class="fa-regular fa-clock"></i><span class="m-1">{{$chap['created_at']}}</span></span>
                    @endif   
                @endforeach
            </div>
            @if ($value_slider->status == 1)

                <div class="new">New</div>
            
            @elseif ($value_slider->status == 2)

                <div class="hot">Hot</div>
                
            @elseif ($value_slider->status == 3)

                <div class="see-more"><i class="fa-solid fa-eye"></i></div>

            @endif
            {{-- <div class="new">New</div>
            <div class="see-more">Xem nhiều</div> --}}
        </div>

        @endforeach
    </div>
</div>

{{-- Slider --}}
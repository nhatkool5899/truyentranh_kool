 
<div class="box-rating">
    <div class="title">Xếp hạng truyện<i class="fa-regular fa-star-half-stroke fa-spin" style="color: orange"></i></div>
    <ul class="tab-nav">
        <li class="text-center tab-nav-active"><a href="">Top tháng</a></li>
        <li class="text-center"><a href="">Top tuần</a></li>
        <li class="text-center"><a href="">Top ngày</a></li>
    </ul>
    <div class="box-rating-body">
        <div class="topMonth">
            <ul class="box-rating-list">
                @foreach($top_views as $key => $top)

                <li class="comics-item">
                    <span class=" number-rank rank-{{$key+1}}">0{{$key+1}}</span>
                    <a href="{{url('truyen-info/'.$top->slug_truyen)}}" class="link-img link-img-rate">
                        <img src="{{asset('public/uploads/truyen/'.$top->hinhanh)}}" alt="{{$top->hinhanh}}" class="comics-img">
                    </a>
                    <div class="comics-body">
                        <h3 class="comics-title">{!! Str::limit($top->tentruyen, 18) !!}</h3>
                        <div class="comics-links comics-style">
                            @foreach($data_views as $key => $chap)

                                @if ($chap['truyen_id'] == $top->id)
                                    <a href="{{url($top->slug_truyen.'/chap-'.$chap['chapter'])}}" class="link-chapter">
                                        <span>Chapter {{$chap['chapter']}}</span>
                                    </a>
                                @endif

                            @endforeach
                            <span class="viewer">
                                <i class="fa-solid fa-eye"></i>
                                <span>{{number_format($top->views,0,',','.')}}</span>
                            </span>
                        </div>
                    </div>
                </li>

                @endforeach
            </ul>
        </div>
    </div>
</div>
@extends('../layout')

@section('content')
    <div class="clear"></div>
    <div class="truyen col-lg-9">
        <ul class="navigation m-4">
            <li class="nav-item home"><a href="{{url('/')}}">Trang chủ</a></li>
            <li class="nav-item">{{ $truyen->tentruyen }}</li>
            <li class="nav-item">Chapter {{ $chapter->chapter }}</li>
        </ul>
        <div class="title-chapter">
            <h2>
                <a href="">{{ $truyen->tentruyen }}</a>             
                <span>- Chapter {{ $chapter->chapter }}</span>
                <i>[Cập nhật lúc: {{ $truyen->created_at}}]</i>
            </h2>
        </div>
        <div class="reading-control text-center p-2">
            <div class="select-server">
                Nếu không xem được truyện vui lòng đổi "SERVER ẢNH" bên dưới
                <div class="server m-2">
                    <a href="" class="btn btn-success">Server 1</a>
                    <a href="" class="btn btn-primary">Server 2</a>
                </div>
                <a href="" class="btn btn-danger "><i class="fa-solid fa-triangle-exclamation mx-1"></i>Báo lỗi</a>
            </div>
        </div>
        <div class="alert-chapter text-center p-2">
            <i>Sử dụng mũi tên trái (←) hoặc phải (→) để chuyển chapter</i>
        </div>
        <div class="nav-chapter text-center">
            <a href="/" class="btn text-nav"><i class="fa-solid fa-house"></i></a>
            <a href="" class="btn text-nav"><i class="fa-solid fa-list"></i></a>
            <a href="" class="btn text-nav"><i class="fa-solid fa-arrow-rotate-right"></i></a>
            <a href="{{url($truyen->slug_truyen.'/chap-'.$previous_chapter)}}" class="a-pre btn btn-success p-1 px-2 {{$chapter->id == $min_id->id ? 'isDisabled' : ''}}">
                <i class="fa-solid fa-chevron-left"></i>
            </a>
            <select class="select-chapter" name="select-chapter">
                @foreach ($list_chapter as $item =>$value)

                <option value="{{url($truyen->slug_truyen.'/chap-'.$value->chapter)}}">Chapter {{ $value->chapter }}</option>
        
                @endforeach
            </select>
            <a href="{{url($truyen->slug_truyen.'/chap-'.$next_chapter)}}" class="a-next btn btn-success p-1 px-2 {{$chapter->id == $max_id->id ? 'isDisabled' : ''}}">
                <i class="fa-solid fa-chevron-right"></i>
            </a>
        </div>
        <div class="reading-detail">
            <div class="clear m-2"></div>
            <div class="page">
                <img src="http://p.nhattruyenmoi.com/content/image.jpg?data=61wbcDWV8UEGvjUpW3p5kLYd5yh5vFKRIX5fCJcjdSTIKSvnbsxuLOWT/OUSrXzyuDIxCzkNtMStgglzpTk0bw==" alt="">
                {!! $chapter->noidung !!}
            </div>
        </div>
    </div>

    <input type="hidden" class="chapterId" value="{{$chapter->id}}">
    <input type="hidden" class="chapterName" value="{{$chapter->chapter}}">
    <input type="hidden" class="chapterUrl" value="{{\URL::current()}}">
    <input type="hidden" class="truyenId" value="{{$truyen->id}}">
    <input type="hidden" class="truyenName" value="{{$truyen->tentruyen}}">
    <input type="hidden" class="truyenImg" value="{{$truyen->hinhanh}}">

    {{-- Lịch sử truyện --}}
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"></script>
    <script>
        $(document).ready(function(){
            const chapterId =  $('.chapterId').val();
            const chapterName =  $('.chapterName').val();
            const chapterUrl = $('.chapterUrl').val();
            const truyenId = $('.truyenId').val();
            const truyenName = $('.truyenName').val();
            const img = $('.truyenImg').val();

            const item = {
                'chapterId': chapterId,
                'chapterName': chapterName,
                'chapterUrl': chapterUrl,
                'truyenId': truyenId,
                'img': img,
                'truyenName': truyenName
            }
            // localStorage.removeItem('visited_comics');

            if(localStorage.getItem('visited_comics') == null){
            localStorage.setItem('visited_comics','[]');
            }
                
            var old_data = JSON.parse(localStorage.getItem('visited_comics'));

            var matches = $.grep(old_data,function(obj){
                return obj.truyenId == truyenId;
            });

            if(matches.length>0){

                for (let index = 0; index < old_data.length; index++) {
                    if(old_data[index].truyenId == truyenId){
                        old_data.splice(index,1);
                    }
                }
                localStorage.removeItem('visited_comics');
                old_data.push(item);
                localStorage.setItem('visited_comics',JSON.stringify(old_data));

            }else{
                if (old_data.length <= 10) {
                    old_data.push(item);
                    localStorage.setItem('visited_comics',JSON.stringify(old_data));
                }
            }

        });
    </script>
@endsection
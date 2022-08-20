<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Chapter;
use App\Models\thuocTheLoai;
use App\Models\truyen;
use Carbon\Carbon;
use Illuminate\Contracts\Pagination\Paginator;
use stdClass;

class HomeController extends Controller
{
    public function index()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();
        $slider = truyen::inRandomOrder()->limit(15)->get();
        $truyen = truyen::orderBy('updated_at', 'DESC')->paginate(20);
        $top_views = truyen::orderBy('views', 'DESC')->take(8)->get();

        foreach ($top_views as $key => $value) {
            $chapter = Chapter::select('chapter','truyen_id')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->limit(1)->get();

            foreach ($chapter as $key => $value_chap) {

                $chapterViews[] = array(
                    'chapter' => $value_chap->chapter,
                    'truyen_id' => $value_chap->truyen_id,
                );
            }
        }
        
        $data_views = json_decode(json_encode($chapterViews), true);

        $count_slider = count($slider);
        $count = count($truyen);

        //Hiển thị chapter slider

        if ($count_slider > 0) {
            foreach ($slider as $key => $value) {
                $chapter = Chapter::select('chapter','created_at','truyen_id')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->limit(1)->get();

                foreach ($chapter as $key => $value_chap) {

                    $chapterSlider[] = array(
                        'chapter' => $value_chap->chapter,
                        'created_at' => $value_chap->created_at->diffForHumans(),
                        'truyen_id' => $value_chap->truyen_id,
                    );
                }
            }
            
            $data_chapter_slider = json_decode(json_encode($chapterSlider), true);

        }

        //Hiển thị chapter body
        if ($count > 0) {
            foreach ($truyen as $key => $value) {
                $chapter = Chapter::select('chapter','created_at','truyen_id')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->limit(3)->get();

                foreach ($chapter as $key => $value_chap) {

                    $chapterStr[] = array(
                        'chapter' => $value_chap->chapter,
                        'created_at' => $value_chap->created_at->diffForHumans(),
                        'truyen_id' => $value_chap->truyen_id,
                    );
                }
            }
            
            $data_chapter = json_decode(json_encode($chapterStr), true);

        } else {
            return view('pages.404');
        }
        
        // $quocgia = quocgia::orderBy('id', 'DESC')->get();
        return view('pages.home')->with(compact('danhmuc','truyen','slider','data_chapter','data_chapter_slider','top_views','data_views'));
    }

    public function danhmuc($slug)
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();
        $slug_danhmuc = category::where('slug_danhmuc', $slug)->first();
        $findTruyen = thuocTheLoai::where('danhmuc_id', $slug_danhmuc->id)->get();

        $count = count($findTruyen);

        if($count > 0){
            foreach ($findTruyen as $key => $val) {

                $truyen = truyen::where('id', $val->truyen_id)->first();

                $truyenStr[] = array(
                    'id' => $truyen->id,
                    'tentruyen' => $truyen->tentruyen,
                    'slug_truyen' => $truyen->slug_truyen,
                    'hinhanh' => $truyen->hinhanh,
                    'views' => $truyen->views,
                    'created_at' => $truyen->created_at->diffForHumans()
                );


                $chapter = Chapter::select('chapter','created_at','truyen_id')->where('truyen_id', $val->truyen_id)->orderBy('id', 'DESC')->limit(3)->get();

                $count_chap = count($chapter);
                if($count_chap > 0){
                    foreach ($chapter as $key => $value_chap) {
        
                        $chapterStr[] = array(
                            'chapter' => $value_chap->chapter,
                            'created_at' => $value_chap->created_at->diffForHumans(),
                            'truyen_id' => $value_chap->truyen_id,
                        );
                    }

                }else{
                    $chapterStr[] = '';
                }
            }   

            $data_chapter = json_decode(json_encode($chapterStr), true);
            $data_truyen = json_decode(json_encode($truyenStr), true);

        } else {
             return view('errors.404');
        }
        return view('pages.danhmuc')->with(compact('danhmuc', 'slug_danhmuc','findTruyen','data_chapter','data_truyen'));
    }

    public function theloai()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();
        $truyen = truyen::with('danhmuc')->get();

        $count = count($truyen);
        if ($count > 0) {
            foreach ($truyen as $key => $value) {
                $chapter = Chapter::select('chapter','created_at','truyen_id')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->limit(3)->get();

                foreach ($chapter as $key => $value_chap) {

                    $chapterStr[] = array(
                        'chapter' => $value_chap->chapter,
                        'created_at' => $value_chap->created_at->diffForHumans(),
                        'truyen_id' => $value_chap->truyen_id,
                    );
                }
            }
            
            $data_chapter = json_decode(json_encode($chapterStr), true);

        } else {
            return view('pages.404');
        }
        return view('pages.theloai')->with(compact('danhmuc', 'truyen','data_chapter'));
    }

    public function wishlist()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();
        

        return view('pages.wishlist')->with(compact('danhmuc'));
    }

    public function visited()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();
        

        return view('pages.visited')->with(compact('danhmuc'));
    }

    public function quocgia($slug)
    {
        return view('pages.quocgia');
    }

    public function search()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();

        $tukhoa = $_GET['tukhoa'];
        $truyen = truyen::with('danhmuc')->where('tentruyen', 'LIKE', '%'.$tukhoa.'%')->orWhere('tacgia', 'LIKE', '%'.$tukhoa.'%')->get();
        return view('pages.search')->with(compact('danhmuc','truyen','tukhoa'));
    }

    public function search_ajax(Request $request)
    {
        $data = $request->all();
        $output ='';
        if($data['keywords']){
            $truyen = truyen::with('danhmuc')->where('tentruyen', 'LIKE', '%'.$data['keywords'].'%')->get();
            
            $output = '<ul class="dropdown-menu d-block suggest-truyen">';
            
            foreach ($truyen as $key => $value) {
                $old_chapter = Chapter::with('truyen')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->first();
                $asset = "{{asset('public/uploads/truyen/".$value->hinhanh."')}}";

                if($old_chapter != ''){
                    $output .= '<li class="dropdown-item">
                                    <a href="truyen-info/'.$value->slug_truyen.'">
                                        <img src="public/uploads/truyen/'.$value->hinhanh.'" alt="">
                                        <div class="info-truyen">
                                            <h4>'.$value->tentruyen.'</h4>
                                            <p>Chapter '.$old_chapter->chapter.'</p>
                                            <p>'.$value->danhmuc->tendanhmuc.'</p>
                                        </div>
                                    </a>
                                </li>';
                }else{
                    $output .= '<li class="dropdown-item">
                                    <a href="truyen-info/'.$value->slug_truyen.'">
                                        <img src="public/uploads/truyen/'.$value->hinhanh.'" alt="">
                                        <div class="info-truyen">
                                            <h4>'.$value->tentruyen.'</h4>
                                            <p>Đang cập nhật</p>
                                            <p>'.$value->danhmuc->tendanhmuc.'</p>
                                        </div>
                                    </a>
                                </li>';
                }
            }

            $output .= '</ul>';
        }
        echo $output;
    }

    public function tukhoa()
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();

        $tukhoa = $_GET['tukhoa'];
        $truyen = truyen::with('danhmuc')->where('tukhoa', 'LIKE', '%'.$tukhoa.'%')->get();

        $count = count($truyen);
        if ($count > 0) {
            foreach ($truyen as $key => $value) {
                $chapter = Chapter::select('chapter','created_at','truyen_id')->where('truyen_id', $value->id)->orderBy('id', 'DESC')->limit(3)->get();

                foreach ($chapter as $key => $value_chap) {

                    $chapterStr[] = array(
                        'chapter' => $value_chap->chapter,
                        'created_at' => $value_chap->created_at->diffForHumans(),
                        'truyen_id' => $value_chap->truyen_id,
                    );
                }
            }
            
            $data_chapter = json_decode(json_encode($chapterStr), true);

        } else {
            return view('pages.404');
        }
        // print_r($truyen);
        return view('pages.tukhoa')->with(compact('danhmuc','truyen','tukhoa','data_chapter'));
    }

    public function truyen($slug)
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();

        $truyen = truyen::with('danhmuc')->where('slug_truyen', $slug)->first();

        $chapter = Chapter::with('truyen')->where('truyen_id', $truyen->id)->orderBy('id', 'DESC')->get();

        $first_chapter = Chapter::with('truyen')->where('truyen_id', $truyen->id)->orderBy('id', 'ASC')->first();
        $old_chapter = Chapter::with('truyen')->where('truyen_id', $truyen->id)->orderBy('id', 'DESC')->first();

        return view('pages.truyen')->with(compact('danhmuc','truyen','chapter','first_chapter','old_chapter'));
    }

    public function view_chapter($slug_truyen, $chapter)
    {
        $danhmuc = category::orderBy('id', 'DESC')->get();

        $truyen = truyen::with('danhmuc')->where('slug_truyen', $slug_truyen)->first();

        $chapter = Chapter::with('truyen')->where('chapter', $chapter)->where('truyen_id', $truyen->id)->first();

        $list_chapter = Chapter::with('truyen')->where('truyen_id',$truyen->id)->get();

        $next_chapter = Chapter::where('truyen_id', $truyen->id)->where('chapter','>',$chapter->chapter)->min('chapter');
        $previous_chapter = Chapter::where('truyen_id', $truyen->id)->where('chapter','<',$chapter->chapter)->max('chapter');

        $max_id = Chapter::where('truyen_id', $truyen->id)->orderBy('id','DESC')->first();
        $min_id = Chapter::where('truyen_id', $truyen->id)->orderBy('id','ASC')->first();

        return view('pages.chapter')->with(compact('danhmuc','truyen','chapter','list_chapter','next_chapter','previous_chapter','max_id','min_id'));
    }

}

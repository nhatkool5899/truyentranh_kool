<?php

namespace App\Http\Controllers;

use App\Models\Chapter;
use App\Models\truyen;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ChapterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $chapter = Chapter::with('truyen')->orderBy('id','DESC')->get();
        // dd($chapter);
        return view('admincb.chapter.index')->with(compact('chapter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $truyen = truyen::orderBy('id','DESC')->get();
        return view('admincb.chapter.create')->with(compact('truyen'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request->validate(
            [
                'tieude' => 'required',
                'chapter' => 'required',
                'tomtat' => 'required',
                'noidung' => 'required',
                'hienthi' => 'required',
                'truyen' => 'required'
            ],
            [
                'tieude.required' => 'Tên tiêu đề không thể trống',
                'chapter.required' => 'Tên chapter không thể trống',
                'tomtat.required' => 'Tóm tắt chapter không thể trống',
                'noidung.required' => 'Nội dung chapter không thể trống',
            ]
        );
        // print_r( $data);
            $check_chapter = Chapter::where('truyen_id',$data['truyen'])->where('chapter',$data['chapter'])->get();
            $count = count($check_chapter);
            if($count > 0){
                return redirect()->back()->with('error', 'Tên Chapter đã tồn tại!');
            }else{

                $chapter = new Chapter();
                $chapter->truyen_id = $data['truyen'];
                $chapter->chapter = $data['chapter'];
                $chapter->tieude = $data['tieude'];
                $chapter->tomtat = $data['tomtat'];
                $chapter->noidung = $data['noidung'];
                $chapter->hienthi = $data['hienthi'];
    
    
                $chapter->save();

                $truyen = truyen::find($data['truyen']);
                $truyen->updated_at = Carbon::now('Asia/Ho_Chi_Minh');
                $truyen->save();

                return redirect()->back()->with('status', 'Thêm Chapter mới thành công');
            }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $chapter = Chapter::find($id);
        // print_r($chapter);
        $truyen = truyen::orderBy('id','DESC')->get();
        return view('admincb.chapter.edit')->with(compact('chapter','truyen'));   
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate(
            [
                'tieude' => 'required|max:255',
                'chapter' => 'required',
                'tomtat' => 'required',
                'noidung' => 'required',
                'hienthi' => 'required',
                'truyen' => 'required'
            ],
            [
                'tieude.required' => 'Tên tiêu đề không thể trống',
                'chapter.required' => 'Tên chapter không thể trống',
                'tomtat.required' => 'Tóm tắt chapter không thể trống',
                'noidung.required' => 'Nội dung chapter không thể trống',
            ]
        );
            // print_r( $data);
            $chapter = Chapter::find($id);
            $chapter->truyen_id = $data['truyen'];
            $chapter->chapter = $data['chapter'];
            $chapter->tieude = $data['tieude'];
            $chapter->tomtat = $data['tomtat'];
            $chapter->noidung = $data['noidung'];
            $chapter->hienthi = $data['hienthi'];
            $chapter->save();
            return redirect()->back()->with('status', 'Cập nhật Chapter thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Chapter::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa Chapter thành công');
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\truyen;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\thuocTheLoai;

use function PHPUnit\Framework\fileExists;

class truyenController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $list_truyen = truyen::with('danhmuc')->orderBy('id','DESC')->get();
        // dd($truyen);
        return view('admincb.truyen.index')->with(compact('list_truyen'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $danhmuc = Category::orderBy('id','DESC')->get();
        return view('admincb.truyen.create')->with(compact('danhmuc'));
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
                'tentruyen' => 'required|unique:truyen|max:255',
                'slug_truyen' => 'required|unique:truyen|max:255',
                'tacgia' => 'required',
                'tomtat' => 'required',
                'hinhanh' =>'required|image|mimes:jpg,png,jpeg,gif,svg|max:2048|dimensions:min_width=100,min_height=100,max_width=1000,max_height=1000',
                'tinhtrang' => 'required',
                'status' => 'required',
                'hienthi' => 'required',
                'tukhoa' => 'required',
                'danhmuc' => 'required'
            ],
            [
                'tentruyen.required' => 'Tên truyện không thể trống',
                'slug_truyen.required' => 'Slug truyện không thể trống',
                'tacgia.required' => 'Tác giả truyện không thể trống',
                'tentruyen.unique' => 'Tên truyện đã có',
                'slug_truyen.unique' => 'Slug truyện đã có',
                'tomtat.required' => 'Tóm tắt truyện không thể trống',
                'tukhoa.required' => 'Từ khóa truyện không thể trống',
                'hinhanh.required' => 'Hình ảnh truyện không thể trống',
                'danhmuc.required' => 'Danh mục truyện không thể trống',
                'tinhtrang.required' => 'Tình trạng truyện không thể trống'
            ]
        );
            $data = $request->all();
            // dd($data['danhmuc']);
            $truyen = new truyen();
            $truyen->tentruyen = $data['tentruyen'];
            $truyen->slug_truyen = $data['slug_truyen'];
            $truyen->tukhoa = $data['tukhoa'];
            $truyen->tacgia = $data['tacgia'];
            $truyen->tomtat = $data['tomtat'];
            $truyen->tinhtrang = $data['tinhtrang'];
            $truyen->status = $data['status'];
            $truyen->hienthi = $data['hienthi'];
            $truyen->created_at = Carbon::now('Asia/Ho_Chi_Minh');

            foreach ($data['danhmuc'] as $key => $value) {
                $truyen->danhmuc_id = $value[0];
            }
            
            $get_image = $request->file('hinhanh');
            // echo $get_image;
            $get_name_image = $get_image->getClientOriginalName();
            $name_image = current(explode('.',$get_name_image));
            $new_image = $name_image.'-'.rand(0,99).'.'.$get_image->getClientOriginalExtension();
            $path = 'public/uploads/truyen/';
            $get_image->move($path,$new_image);
            $truyen->hinhanh = $new_image;

            $truyen->save();

            $truyen->thuocnhieutheloaitruyen()->attach($data['danhmuc']);

            return redirect()->back()->with('status', 'Thêm truyện mới thành công');
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
        $truyen = truyen::find($id);
        $danhmuc = Category::orderBy('id','DESC')->get();
        return view('admincb.truyen.edit')->with(compact('truyen','danhmuc'));  
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
                'tentruyen' => 'required|max:255',
                'slug_truyen' => 'required|max:255',
                'tacgia' => 'required',
                'tomtat' => 'required',
                'status' => 'required',
                'hienthi' => 'required',
                'tinhtrang' => 'required',
                'tukhoa' => 'required',
                'danhmuc' => 'required'
            ],
            [
                'tentruyen.required' => 'Tên truyện không thể trống',
                'slug_truyen.required' => 'Slug truyện không thể trống',
                'tentruyen.unique' => 'Tên truyện đã có',
                'slug_truyen.unique' => 'Slug truyện đã có',
                'tomtat.required' => 'Tóm tắt truyện không thể trống',
                'tacgia.required' => 'Tác giả truyện không thể trống',
                'tukhoa.required' => 'Từ khóa truyện không thể trống',
                'tinhtrang.required' => 'Tình trạng truyện không thể trống',
            ]
        );
            $data = $request->all();
            // print_r( $data);
            $truyen = truyen::find($id);
            $truyen->tentruyen = $data['tentruyen'];
            $truyen->slug_truyen = $data['slug_truyen'];
            $truyen->tukhoa = $data['tukhoa'];
            $truyen->tacgia = $data['tacgia'];
            $truyen->tomtat = $data['tomtat'];
            $truyen->tinhtrang = $data['tinhtrang'];
            $truyen->status = $data['status'];
            $truyen->hienthi = $data['hienthi'];
            $truyen->updated_at = Carbon::now('Asia/Ho_Chi_Minh');

            foreach ($data['danhmuc'] as $key => $value) {
                $truyen->danhmuc_id = $value[0];
            }

            $get_image = $request->file('hinhanh');
            if($get_image){
                $path = 'public/uploads/truyen/'.$truyen->hinhanh;
                if(file_exists($path)){
                    unlink($path);
                }
                $path = 'public/uploads/truyen/';
                $get_name_image = $get_image->getClientOriginalName();
                $name_image = current(explode('.',$get_name_image));
                $new_image = $name_image.'-'.rand(0,99).'.'.$get_image->getClientOriginalExtension();
                $get_image->move($path,$new_image);
                $truyen->hinhanh = $new_image;
    
                $truyen->save();
                $truyen->thuocnhieutheloaitruyen()->attach($data['danhmuc']);
            } else{
                $truyen->save();
                $truyen->thuocnhieutheloaitruyen()->attach($data['danhmuc']);
            }

            return redirect()->back()->with('status', 'Cập nhật truyện thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $truyen = truyen::find($id);
        $path = 'public/uploads/truyen/'.$truyen->hinhanh;
        if(file_exists($path)){
            unlink($path);
        }
        truyen::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa truyện thành công');
    }
}

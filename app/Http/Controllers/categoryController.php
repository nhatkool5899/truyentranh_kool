<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Auth\Events\Validated;
use Illuminate\Http\Request;

class categoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $danhmuctruyen = Category::orderBy('id','DESC')->get();

        return view('admincb.danhmuctruyen.index')->with(compact('danhmuctruyen'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admincb.danhmuctruyen.create');
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
            'tendanhmuc' => 'required|unique:danhmuc|max:255',
            'slug_danhmuc' => 'required|unique:danhmuc|max:255',
            'mota' => 'required',
            'hienthi' => 'required'
        ],
        [
            'tendanhmuc.required' => 'Tên danh mục không thể trống',
            'slug_danhmuc.required' => 'Slug danh mục không thể trống',
            'tendanhmuc.unique' => 'Tên danh mục đã có',
            'slug_danhmuc.unique' => 'Slug danh mục đã có',
            'mota.required' => 'Mô tả danh mục không thể trống',
        ]
    );
        // print_r( $data);
        $danhmuc = new Category();
        $danhmuc->tendanhmuc = $data['tendanhmuc'];
        $danhmuc->slug_danhmuc = $data['slug_danhmuc'];
        $danhmuc->mota = $data['mota'];
        $danhmuc->hienthi = $data['hienthi'];
        $danhmuc->save();
        return redirect()->back()->with('status', 'Them danh muc truyen thanh cong');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // $danhmuctruyen = Category::find($id);
        // return view('admincb.danhmuctruyen.edit')->with(compact('danhmuctruyen'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $danhmuctruyen = Category::find($id);
        return view('admincb.danhmuctruyen.edit')->with(compact('danhmuctruyen'));   
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
                'tendanhmuc' => 'required|max:255',
                'slug_danhmuc' => 'required|max:255',
                'mota' => 'required',
                'hienthi' => 'required'
            ],
            [
                'tendanhmuc.unique' => 'Tên danh mục đã có',
                'tendanhmuc.required' => 'Tên danh mục không thể trống',
                'slug_danhmuc.unique' => 'Slug danh mục đã có',
                'mota.required' => 'Mô tả danh mục không thể trống',
            ]
        );
            // print_r( $data);
            $danhmuc = Category::find($id);
            $danhmuc->tendanhmuc = $data['tendanhmuc'];
            $danhmuc->slug_danhmuc = $data['slug_danhmuc'];
            $danhmuc->mota = $data['mota'];
            $danhmuc->hienthi = $data['hienthi'];
            $danhmuc->save();
            return redirect()->back()->with('status', 'Cập nhật danh mục truyện thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Category::find($id)->delete();
        return redirect()->back()->with('status', 'Xóa danhh mục truyện thành công');
    }

    public function unactivedanhmuc(){

    }

    public function activedanhmuc(){
        
    }
}

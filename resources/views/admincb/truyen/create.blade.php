@extends('layouts.admin')
@section('admin_content')
<div class="form-w3layouts">
    <!-- page start-->
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Thêm truyện
                </header>
                <div class="panel-body">

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif
                    <div class="position-center">
                        @if (session('status'))
                            <div class="alert alert-success">
                                {{ session('status') }}
                            </div>
                        @endif
                        <form action="{{route('truyen.store')}}" method="POST" class="form-horizontal" role="form" enctype="multipart/form-data">
                            {{ csrf_field() }}
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tên truyện</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="tentruyen" value="{{old('tentruyen')}}" onkeyup="ChangeToSlug()" id="slug">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Slug truyện</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="slug_truyen" value="{{old('slug_truyen')}}" id="convert_slug">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Từ khóa</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="tukhoa" value="{{old('tukhoa')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tác giả</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="tacgia" value="{{old('tacgia')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tóm tắt truyện</label>
                            <div class="col-lg-9">
                                <textarea style="resize: none" rows="5" class="form-control" name="tomtat">{{old('tomtat')}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Hình ảnh truyện</label>
                            <div class="col-lg-9">
                                <input type="file" class="form-control" name="hinhanh">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Danh mục truyện</label>
                            <div class="col-lg-9">
                                @foreach ($danhmuc as $key => $value)
                                <div class="checkbox-inline">
                                    <input class="form-check-input" type="checkbox" name="danhmuc[]" value="{{$value->id}}" id="danhmuc_{{$value->id}}">
                                    <label class="form-check-label" for="{{$value->id}}">{{$value->tendanhmuc}}</label>
                                </div>  
                                @endforeach
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tình trạng</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="tinhtrang" value="{{old('tinhtrang')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Trạng thái</label>
                            <div class="col-lg-2">
                                <select name="status" class="form-control">
                                    <option value="0">---Chọn trạng thái---</option>
                                    <option value="1">New</option>
                                    <option value="2">Hot</option>
                                    <option value="3">Xem nhiều</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Hiển thị</label>
                            <div class="col-lg-2">
                                <select name="hienthi" class="form-control">
                                    <option value="0">Ẩn</option>
                                    <option value="1">Hiện</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-offset-3 col-lg-10">
                                <button type="submit" name="add_category_product" class="btn btn-success">Thêm truyện</button>
                            </div>
                        </div>
                        <div class="col-lg-offset-3 text-success">
                        <?php
                        $message = Session::get('message');
                        if($message){
                            echo '<span><i class="fa fa-check"></i>';
                            echo  $message;
                            echo  '</span>';
                            session()->put('message', null);
                        }
                        ?>

                        </div>
                    </form>
                    </div>
                </div>
            </section>

        </div>
    </div>

    <!-- page end-->
</div>

@endsection
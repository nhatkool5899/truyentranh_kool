@extends('layouts.admin')
@section('admin_content')
<div class="form-w3layouts">
    <!-- page start-->
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading">
                    Thêm Chapter mới
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
                        @if (session('error'))
                            <div class="alert alert-danger">
                                {{ session('error') }}
                            </div>
                        @endif
                        <form action="{{route('chapter.store')}}" method="POST" class="form-horizontal" role="form">
                            {{ csrf_field() }}
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Truyện</label>
                            <div class="col-lg-4">
                                <select name="truyen" class="form-control">
                                    @foreach ($truyen as $ket => $value)
                                    
                                    <option value="{{ $value->id }}">{{ $value->tentruyen }}</option>

                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Chapter</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="chapter" value="{{old('chapter')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tiêu đề Chapter</label>
                            <div class="col-lg-9">
                                <input type="text" class="form-control" name="tieude" value="{{old('tieude')}}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Tóm tắt</label>
                            <div class="col-lg-9">
                                <textarea style="resize: none" rows="5" class="form-control" name="tomtat">{{old('tomtat')}}</textarea>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 col-sm-3 control-label">Nội dung</label>
                            <div class="col-lg-9">
                                <textarea id="ckeditor" style="resize: none" rows="5" class="form-control" name="noidung">{{old('noidung')}}</textarea>
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
                                <button type="submit" name="add_category_product" class="btn btn-success">Thêm Chapter</button>
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
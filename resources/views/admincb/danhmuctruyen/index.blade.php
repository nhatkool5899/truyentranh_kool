@extends('layouts.admin')
@section('admin_content')

<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Danh sách các danh mục truyện
        </div>
        <div class="row w3-res-tb">
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="col-sm-5 m-b-xs">
                <select class="input-sm form-control w-sm inline v-middle">
                    <option value="0">Bulk action</option>
                    <option value="1">Delete selected</option>
                    <option value="2">Bulk edit</option>
                    <option value="3">Export</option>
                </select>
                <button class="btn btn-sm btn-default">Apply</button>                
            </div>
            <div class="col-sm-4">
            </div>
            <div class="col-sm-3">
                <div class="input-group">
                    <input type="text" class="input-sm form-control" placeholder="Search">
                    <span class="input-group-btn">
                        <button class="btn btn-sm btn-default" type="button">Go!</button>
                    </span>
                </div>
            </div>
        </div>
        <div class="table-responsive">
            <table class="table table-striped b-t b-light">
                <?php
                    $message = Session::get('message');
                    if($message){
                        echo  $message;
                        session()->put('message', null);
                    }
                ?>
            <thead>
                <tr>
                <th style="width:20px;">
                    <label class="i-checks m-b-none">
                    <input type="checkbox"><i></i>
                    </label>
                </th>
                <th>#</th>
                <th>Tên danh mục</th>
                <th>Slug danh mục</th>
                <th>Mô tả</th>
                <th>Ẩn/Hiện</th>
                <th>Ngày thêm</th>
                <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($danhmuctruyen as $key => $danhmuc)

                <tr>
                    <td><label class="i-checks m-b-none text-"><input type="checkbox" name="post[]"><i></i></label></td>
                    <td>{{ $danhmuc->id }}</td>
                    <td>{{ $danhmuc->tendanhmuc }}</td>
                    <td>{{ $danhmuc->slug_danhmuc }}</td>
                    <td>{{ $danhmuc->mota }}</td>
                    <td><span class="text-ellipsis">
                        <?php
                        if($danhmuc->hienthi == 0){
                        ?>
                            <a style="font-weight: 600" href="{{URL::to("/unactive-danhmuc/".$danhmuc->id)}}">Ẩn</a>
                        <?php
                        }else {
                        ?>
                            <a style="font-weight: 600" href="{{URL::to("/active-danhmuc/".$danhmuc->id)}}">Hiện</a>
                        <?php
                        }
                        ?>    
                    </span></td>
                    <td><span class="text-ellipsis">{{ $danhmuc->created_at }}</span></td>
                    <td style="display: flex">
                        
                        <a href="{{route('danhmuc.edit',['danhmuc' => $danhmuc->id])}}" style="font-size:18px; border:1px solid #ccc; padding: 0 5px"><i class="fa fa-pencil-square-o"></i></a>
                        <form action="{{route('danhmuc.destroy',['danhmuc' => $danhmuc->id])}}" method="post">
                            @method("DELETE")
                            @csrf
                            <button onclick="return confirm('Bạn có chắc là xóa danh mục này?')"><i class="fa fa-times text-danger"></i></button>
                        </form>

                        {{--<a href="{{URL::to('/delete-danhmuc/'.$danhmuc->id)}}" onclick="return confirm('Bạn có chắc là xóa danh mục này?')" class="active link-icon-category"><i class="fa fa-times text-danger"></i></a> --}}
                        
                    </td>
                </tr>

                @endforeach
            </tbody>
            </table>
        </div>
    <footer class="panel-footer">
        <div class="row">
          
          <div class="col-sm-5 text-center">
            <small class="text-muted inline m-t-sm m-b-sm">showing 20-30 of 50 items</small>
          </div>
          <div class="col-sm-7 text-right text-center-xs">                
            <ul class="pagination pagination-sm m-t-none m-b-none">
              <li><a href=""><i class="fa fa-chevron-left"></i></a></li>
              <li><a href="">1</a></li>
              <li><a href="">2</a></li>
              <li><a href="">3</a></li>
              <li><a href="">4</a></li>
              <li><a href=""><i class="fa fa-chevron-right"></i></a></li>
            </ul>
          </div>
        </div>
    </footer>
    </div>
  </div>

@endsection
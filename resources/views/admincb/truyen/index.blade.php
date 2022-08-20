@extends('layouts.admin')
@section('admin_content')

<div class="table-agile-info">
    <div class="panel panel-default">
        <div class="panel-heading">
            Danh sách tất cả truyện
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
                <th>Tên truyện</th>
                <th>Tác giả</th>
                <th>Hình ảnh</th>
                <th>Danh mục</th>
                <th>Ẩn/Hiện</th>
                <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($list_truyen as $key => $truyen)

                <tr>
                    <td><label class="i-checks m-b-none text-"><input type="checkbox" name="post[]"><i></i></label></td>
                    <td>{{$key}}</td>
                    <td>{{ $truyen->tentruyen }}</td>
                    <td>{{ $truyen->tacgia }}</td>
                    <td><img src="{{asset('public/uploads/truyen/'.$truyen->hinhanh)}}" alt="" height="30" width="60"></td>
                    {{-- <td>{{ $truyen->danhmuc->tendanhmuc }}</td> --}}
                    <td><span class="text-ellipsis">
                        <?php
                        if($truyen->hienthi == 0){
                        ?>
                            <a style="font-weight: 600" href="{{URL::to("/unactive-truyen/".$truyen->id)}}">Ẩn</a>
                        <?php
                        }else {
                        ?>
                            <a style="font-weight: 600" href="{{URL::to("/active-truyen/".$truyen->id)}}">Hiện</a>
                        <?php
                        }
                        ?>    
                    </span></td>
                    <td style="display: flex">
                        
                        <a href="{{route('truyen.edit',['truyen' => $truyen->id])}}" style="font-size:18px; border:1px solid #ccc; padding: 0 5px"><i class="fa fa-pencil-square-o"></i></a>
                        <form action="{{route('truyen.destroy',['truyen' => $truyen->id])}}" method="post">
                            @method("DELETE")
                            @csrf
                            <button onclick="return confirm('Bạn có chắc là xóa danh mục này?')"><i class="fa fa-times text-danger"></i></button>
                        </form>
                        
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
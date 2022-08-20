@extends('layouts.admin')
@section('admin_content')

<div class="container-fluid" style="color: #fff">
    <div class="row">
        <div class="title_thongke">
            Thống kê doanh số đơn hàng
        </div>
        <form autocomplete="off">
            {{ csrf_field() }}
            <div class="col-md-2">
                <p>Từ ngày: <input type="text" id="datepicker" class="form-control"></p>
                <input type="button" id="btn-dashboard-filter" class="btn btn-primary btn-sm" value="Lọc kết quả" style="margin-top: 10px">
            </div>
            <div class="col-md-2">
                <p>Từ ngày: <input type="text" id="datepicker2" class="form-control"></p>
            </div>
            <div class="col-md-2">
                <p>
                    Lọc theo:
                    <select class="dashboard-filter form-control">
                        <option value="">30 ngày gần đây</option>
                        <option value="7ngay">7 ngày qua</option>
                        <option value="thangtruoc">tháng trước</option>
                        <option value="thangnay">tháng này</option>
                        <option value="365ngayqua">365 ngày qua</option>
                    </select>
                </p>
            </div>
        </form>

        <div class="col-md-12">
            <div id="myfirstchart" style="height: 250px; color:#fff"></div>
        </div>
    </div>

    <div class="row">
        <div class="title_thongke">
            Thống kê lượt truy cập
        </div>
        <table class="table table-bordered table-dark">
            <thead>
                <tr>
                    <th style="color: #fff" scope="col">Đang online</th>
                    <th style="color: #fff" scope="col">Tổng tháng trước</th>
                    <th style="color: #fff" scope="col">Tổng tháng này</th>
                    <th style="color: #fff" scope="col">Tổng một năm</th>
                    <th style="color: #fff" scope="col">Tổng truy cập</th>
                </tr>
            </thead>
            {{-- <tbody style="background: rgba(56, 37, 37, 0.8)">
                <td style="color: #fff">{{$visitor_count}}</td>
                <td style="color: #fff">{{$visitor_last_month_count}}</td>
                <td style="color: #fff">{{$visitor_this_month_count}}</td>
                <td style="color: #fff">{{$visitor_year_count}}</td>
                <td style="color: #fff">{{$visitors_total}}</td>
            </tbody> --}}
        </table>
    </div>

    {{-- <div class="row">
        <div class="col-md-4 col-xs-12">
            <div class="title-thongke">Thống kê bài viết</div>
        </div>
    </div> --}}

</div>

@endsection
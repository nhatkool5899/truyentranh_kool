<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\DB;

class adminController extends Controller
{
    public function AuthLogin()
    {
        $admin_id = session()->get('admin_id');
        if($admin_id){
            return Redirect::to('/dashboard');
        }else{
            return Redirect::to('/admin')->send();
        }
    }

    public function index()
    {
        return view('admincb.admin_login');
    }

    public function show_dashboard(){
        $this->AuthLogin();
        return view('admincb.dashboard');
    }

    public function dashboard(Request $request){
        $admin_email = $request->admin_email;
        $admin_password = md5($request->admin_password);


        $result = DB::table('tbl_admin')->where('admin_email',$admin_email)->where('admin_password',$admin_password)->first();
        if($result){
            session()->put('admin_email', $result->admin_email);
            session()->put('admin_id', $result->admin_id);
            return Redirect::to('/dashboard');
        }else{
            session()->put('message', '<div style="color:red">Tài khoản hoặc mật khẩu không hợp lệ, vui lòng kiểm tra lại!</div>');
            return Redirect::to('/admin');
        }
    }
}

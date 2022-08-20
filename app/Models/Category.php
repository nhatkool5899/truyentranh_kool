<?php

namespace App\Models;

use App\Http\Controllers\truyenController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    public $timestamp = false;
    protected $fillable = [
        'tendanhmuc', 'slug_danhmuc', 'mota', 'hienthi'
    ];
    
    protected $primary = 'id';
    protected $table = 'danhmuc'; 

    public function truyen(){
        return $this->hasMany('App\Models\truyen','danhmuc_id','id');
    }
}

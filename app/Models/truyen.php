<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class truyen extends Model
{
    use HasFactory;

    public $timestamp = false;
    protected $fillable = [
        'tentruyen', 'slug_truyen', 'tukhoa', 'tacgia', 'tomtat', 'hinhanh','danhmuc_id', 'tinhtrang', 'status', 'hienthi'
    ];
    
    protected $primary = 'id';
    protected $table = 'truyen'; 

    public function danhmuc(){
        return $this->belongsTo('App\Models\Category');
    }

    public function chapter(){
        return $this->hasMany('App\Models\Chapter','truyen_id', 'id');
    }

    public function thuocnhieutheloaitruyen(){
        return $this->belongsToMany(Category::class,'thuoctheloai', 'truyen_id','danhmuc_id');
    }
}

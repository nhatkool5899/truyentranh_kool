<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chapter extends Model
{
    use HasFactory;
    public $timestamp = false;
    protected $fillable = [
        'truyen_id', 'chapter', 'tieude', 'tomtat', 'noidung', 'hienthi'
    ];
    
    protected $primary = 'id';
    protected $table = 'chapter'; 

    public function truyen(){
        return $this->belongsTo('App\Models\truyen');
    }
}

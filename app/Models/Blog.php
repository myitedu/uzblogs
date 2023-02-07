<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{

    public function user(){
        return $this->belongsTo(User::class);
    }

    public function ratings(){
        return $this->hasMany(Rating::class,'blog_id');
    }

    public function comments(){
        return $this->hasMany(Comment::class,'blog_id')->orderBy('id','desc');
    }

    use HasFactory;
}

<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\User;
use Illuminate\Http\Request;

class BlogsController extends Controller
{
    public function blogs(Request $request){
        $keyword = $request->keyword??null;
        $keyword = strip_tags($keyword);
        $keyword = substr($keyword,0, 25);

        if (!empty($keyword)){
            $blogs = Blog::where("description","like","%$keyword%")->orWhere("long_description","like","%$keyword%")->get();
        }else{
            $blogs = Blog::take(20)->get();
        }
        return view('blogs',compact('blogs','request'));
    }

    public function blog(Request $request, $id){
        $id = (int) $id;
        $validate_id = Blog::find($id);
        if (!$validate_id){
            return redirect()->route('blogs');
        }
        $blog = Blog::find($id);
        return view('blog',compact('blog','request'));
    }
}

<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Comment;
use App\Models\Rating;
use App\Models\User;
use Illuminate\Http\Request;
use App\Traits\Helper;

class BlogsController extends Controller
{
    use Helper;
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

    public function vote(Request $request, $blog_id){
        $blog_id = (int) $blog_id;
        $bid = $_POST['blog_id']??null;
        $action = $_POST['action']??null;
        $user_id = 1;

        $bid = (int) $bid;
        $action = (int) $action;
        if ($bid != $blog_id){
            return $this->respond(true,"401","Unauthorised request");
        }
        if (!$blog_id){
            return $this->respond(true,"404","The blog id is invalid");
        }
        $blog = Blog::find($blog_id);
        if (!$blog){
            return $this->respond(true,"404","This blog does not exist");
        }
        $obj = Rating::where('blog_id', $blog_id)->where('user_id', $user_id)->first();
       if (!$obj) {
           $rating = Rating::create(
               [
               'blog_id' => $blog_id,
               'user_id' => $user_id,
               'ratings' => $action
               ]
           );
           return $this->respond(false,"200","Your vote has been accepted");
       }
        return $this->respond(true,"200","Sorry, you have voted for this blog before");

    }

    public function post_comment(Request $request, $blog_id){
        $user_id = 1;
        $parms = $request->input();
        $bid = (int) $parms['blog_id'];
        $bid2 = (int) $blog_id;
        $comment = $parms['comment']??null;
        $comment = strip_tags($comment);
        if (strlen($comment)<1){
            return $this->respond(true,401,"Your comment is empty");
        }
        if ($bid!=$bid2){
            return $this->respond(true,401,"Unauthorized Access");
        }
        $blog = Blog::find($bid);
        if (!$blog){
            return $this->respond(true,404,"No blog found by that id");
        }
        //safe zone


        $create = Comment::create([
            'blog_id'=>$bid,
            'user_id' => $user_id,
            'comment' => $comment
        ]);
        return redirect('/blog/'.$bid."?msg=Your comment has been posted");
    }

    public function users_blogs(Request $request, $user_id){
        $user_id = (int) $user_id;
        $user = User::find($user_id);
        if (!$user){
            return redirect('/');
        }
        $blogs = $user->blogs;
        return view('user_blogs',compact('blogs','request'));
    }


}

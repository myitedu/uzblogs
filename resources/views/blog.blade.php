@extends('master')
@section('title', 'Uzbek Blogs')
@section('content')
    <header>
        <div class="collapse bg-dark" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-md-7 py-4">
                        <h4 class="text-white">About</h4>
                        <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
                    </div>
                    <div class="col-sm-4 offset-md-1 py-4">
                        <h4 class="text-white">Contact</h4>
                        <ul class="list-unstyled">
                            <li><a href="#" class="text-white">Follow on Twitter</a></li>
                            <li><a href="#" class="text-white">Like on Facebook</a></li>
                            <li><a href="#" class="text-white">Email me</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="navbar navbar-dark bg-dark shadow-sm">
            <div class="container">
                <a href="/" class="navbar-brand d-flex align-items-center">
                    <strong>UzBlogs</strong>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </header>
    <nav style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">Home</a></li>
            <li class="breadcrumb-item" aria-current="page"><a href="/">Blogs</a></li>
            <li class="breadcrumb-item active" aria-current="page">{{$blog->title}}</li>
        </ol>
    </nav>
    <main class="container">
        <div class="row g-5">
            <div class="col-md-8">
                <article class="blog-post">
                    <h2 class="blog-post-title mb-1">{{$blog->title}}</h2>
                    <p class="blog-post-meta">{{$blog->created_at}} by <a href="#">{{$blog->user->name}}</a></p>
                    <div class="btn_rates">

                        <button class="btn btn-info">Leave Comment</button>

                        <div id="container">
                            <div class="message">
                                Thanks for Liking the Blog!
                                <br>
                                Your Likes are important!
                            </div>
                            <button class="yes">OK</button>
                        </div>
                        <input type="button" class="btn btn-success" value="Like" onclick="geeks();" />
                        <div id="container2">
                            <div class="message">
                                You Disliked the Blog!
                                <br>
                                Please read again!
                            </div>
                            <button class="yes">OK</button>
                        </div>
                        <input type="button" class="btn btn-danger" value="Dislike" onclick="geeks2();" />

                    </div>
                    <br>
                    <p>{{$blog->description}}</p>
                    <hr>
                    <p class="long_description">{{$blog->long_description}}</p>
                </article>

            </div>
        </div>
        <div style="text-align: right">
            <p style="text-align: center; font-size: larger; font-family: Cantarell; color: #0f6674;">Your comment goes here</p>
        <form method="post">
            <textarea class="comment_box placeholder="Your comment goes here"></textarea>
            <br>
            <button type="reset" class="btn btn-dark">Reset</button>
            <button type="submit" class="btn btn-success">Post</button>
        </form>
        </div>
    </main>
    <style>
    .comment_box{
        color: #ff0000;
        width:100%;
        height: 200px;
        background-color: #e3dddd;
    }
    #container {
        display: none;
        background-image: linear-gradient(to right, #66a80f, #c0eb75);
        background-size:cover;
        color: white;
        position: absolute;
        width: 350px;
        border-radius: 5px;
        left: 50%;
        margin-left: -160px;
        padding: 16px 8px 8px;
        box-sizing: border-box;
    }
    #container2 {
        display: none;
        background-image: linear-gradient(to right, #de0d0d, #ff7649);
        background-size:cover;
        color: white;
        position: absolute;
        width: 350px;
        border-radius: 5px;
        left: 50%;
        margin-left: -160px;
        padding: 16px 8px 8px;
        box-sizing: border-box;
    }
    </style>
    <script>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        function geeks(msg, gfg) {
            var confirmBox = $("#container");

            /* Trace message to display */
            confirmBox.find(".message").text(msg);

            /* Calling function */
            confirmBox.find(".yes").unbind().click(function()
            {
                confirmBox.hide();
            });
            confirmBox.find(".yes").click(gfg);
            confirmBox.show();

            confirmBox.find(".no").unbind().click(function()
            {
                confirmBox.hide();
            });
            confirmBox.find(".no").click(gfg);
            confirmBox.show();
        }
        function geeks2(msg, gfg) {
            var confirmBox = $("#container2");

            /* Trace message to display */
            confirmBox.find(".message").text(msg);

            /* Calling function */
            confirmBox.find(".yes").unbind().click(function()
            {
                confirmBox.hide();
            });
            confirmBox.find(".yes").click(gfg);
            confirmBox.show();

            confirmBox.find(".no").unbind().click(function()
            {
                confirmBox.hide();
            });
            confirmBox.find(".no").click(gfg);
            confirmBox.show();
        }
        $(function () {
            $(".btn-info").click(function () {
                $(".long_description").toggle();
            });

            let btn_title = "Show Comments";
            $(".btn_show_comments").click(function () {
                let id = $(this).data('id');
                $(".comment_"+id).toggle();
                if (btn_title == 'Show Comments'){
                    btn_title = "Hide Comments";
                }else{
                    btn_title = "Show Comments";
                }
                $(this).html(btn_title);
            });

            $(".span_rating").click(function () {
                let id = $(this).data('id');
                let rating = $(this).data('rating');
                let parms = {
                    blog_id:id,
                    user_id:88,
                    rating:rating
                };
                $.post('post_rating.php',parms, function (blog_id) {
                    if (blog_id>0){
                        document.location = "index.php#blog_id="+blog_id;
                        return false;
                    }
                });
            });

        });
    </script>

@stop

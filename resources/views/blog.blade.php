@extends('master')
@section('title', 'Uzbek Blogs')
@section('content')
    <header id="myheader" data-blog_id="{{$blog->id}}">
        <div class="collapse bg-dark" id="navbarHeader">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-md-7 py-4">
                        <h4 class="text-white">About</h4>
                        <p class="text-muted">Add some information about the album below, the author, or any other
                            background context. Make it a few sentences long so folks can pick up some informative
                            tidbits. Then, link them off to some social networking sites or contact information.</p>
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
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader"
                        aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </header>
    <nav aria-label="breadcrumb">
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
                        <div id="div_error" class="alert"></div>
                        <button class="btn btn-info">Leave Comment</button>
                        <input data-action="1" type="button" class="btn btn-success btn_like_dislike" value="Like">
                        <input data-action="-1" type="button" class="btn btn-danger btn_like_dislike" value="Dislike">
                    </div>
                    <br>
                    <p>{{$blog->description}}</p>
                    <hr>
                    <p class="long_description">{{$blog->long_description}}</p>
                </article>

            </div>
        </div>
        <div style="text-align: right">
            <p style="text-align: center; font-size: larger; font-family: Cantarell; color: #0f6674;">Your comment goes
                here</p>
            <form method="post">
                <textarea class="comment_box" placeholder="Your comment goes here"></textarea>
                <br>
                <button type="reset" class="btn btn-dark">Reset</button>
                <button type="submit" class="btn btn-success">Post</button>
            </form>
        </div>
    </main>

    <script>

        $(function () {
            let close_div = null;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(".btn_like_dislike").click(function () {
               let action = $(this).data('action');
               let blog_id = $("#myheader").data('blog_id');
               let parms = {
                   'blog_id': blog_id,
                   'action':action
               };
               $.post('/blog/vote/'+blog_id, parms, function (response) {
                   if (response.error){
                       $("#div_error").removeClass("alert-success").addClass("alert-danger").html(response.msg).fadeIn('slow');
                   }else{
                       $("#div_error").removeClass("alert-danger").addClass("alert-success").html(response.msg).fadeIn('slow');
                   }
                   close_div = setInterval(close_alert_divs, 5000);
               });
            });
            function close_alert_divs() {
                $("#div_error").fadeOut('fast');
                clearInterval(close_div);
            }
        });


    </script>
    <style>
        #div_error{
            display: none;
        }
    </style>
@stop

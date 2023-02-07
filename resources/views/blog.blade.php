@extends('master')
@section('title', 'Uzbek Blogs')
@section('content')
    <script src="https://cdn.ckeditor.com/ckeditor5/36.0.0/classic/ckeditor.js"></script>
    <header id="myheader" data-blog_id="{{$blog->id}}" data-show_comment="{{$request->show_comments}}">
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
            <div class="col-md-12">

                <article class="blog-post">
                    <h2 class="blog-post-title mb-1">{{$blog->title}}</h2>
                    <p class="blog-post-meta">{{$blog->created_at}} by <a href="/user/{{$blog->user->id}}/blogs">{{$blog->user->name}}</a></p>

                    @if($request->msg)
                        <div class="alert alert-success div_error">{{$request->msg}}</div>
                    @endif

                    @if(count($blog->comments))
                        <div class="div_number_of_comments">There are <span class="number_of_comments">{{count($blog->comments)}}</span> <a href="/blog/{{$blog->id}}?show_comments=yes#bottom">comments</a> for this blog</div>
                    @endif

                    @if(count($blog->ratings))
                        <div class="stars">
                            @php
                                $sum = 0;
                                $qty = count($blog->ratings);
                                foreach ($blog->ratings as $rate){
                                    $sum+=$rate->ratings;
                                }
                                $stars = 0;
                                if ($qty) {
                                    $stars = round($sum / $qty * 5);
                                     $stars = (int) $stars;
                                }
                                echo "<strong>Ratings:</strong> ";
                                for($index=0; $index<$stars; $index++){
                                    echo "<img class=\"rating_star\" src=\"/img/star_rating.png\"  alt=\"One star\">";

                                }

                            @endphp
                        </div>
                    @endif

                    <hr>
                    <p>{{$blog->description}}</p>
                    <hr>
                    <p class="long_description">{{$blog->long_description }}</p>
                </article>

                <div id="bottom"></div>

                @if($request->show_comments == 'yes' && count($blog->comments))
                <section id="comments">
                    <h3>Comments</h3>
                    @foreach($blog->comments as $id=> $comment)
                    <div data-comment_id="1" class="single_comment">
                        <div class="comment_text">
                            <div class="comment_id">{{++$id}}</div>
                            {!! $comment->comment !!}
                        </div>
                        <div class="comment_links">
                            Posted by <a href="/user/{{$comment->blog_id}}/blogs">{{$comment->user->name}}</a> on {{$comment->created_at}}
                            | <a href="#" class="btn_leave_comment">Reply</a>
                        </div>
                    </div>
                        @endforeach
                </section>
                @endif



                <div id="comment_section">
                    <form method="post" action="/blog/post/{{$blog->id}}/comment">
                        <p><textarea id="comment_textarea" name="comment" placeholder="Leave Your Comment"></textarea></p>
                        <p>
                            @csrf
                            <input name="blog_id" type="hidden" value="{{$blog->id}}">
                            <button class="btn btn-dark">Reset</button>
                            <button class="btn btn-info">POST</button>
                        </p>
                    </form>
                </div>
                <div class="btn_rates">
                    <div class="alert div_error"></div>
                    <button class="btn btn-info btn_leave_comment">Leave Comment</button>
                    @if(count($blog->comments))
                        @if($request->show_comments=='yes')
                            <button class="btn btn-danger btn_hide_comments">Hide Comments</button>
                        @else
                            <button class="btn btn-dark btn_display_comments">Comments({{count($blog->comments)}})</button>
                        @endif
                        @endif
                    <input data-action="1" type="button" class="btn btn-success btn_like_dislike" value="Like">
                    <input data-action="-1" type="button" class="btn btn-danger btn_like_dislike" value="Dislike">
                </div>

            </div>
        </div>

        <script>
            ClassicEditor.create( document.querySelector( '#comment_textarea' ) );
        </script>


    </main>
    <script>
        $(function () {
            let show_comment = $("#myheader").data("show_comment");


            if (show_comment=='yes') {
                $('html, body').animate({
                    scrollTop: $("#bottom").offset().top
                }, 100);
            }





            let close_div = null;
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $(".btn_hide_comments").click(function () {
               $("#comments").fadeOut("slow");
               document.location="/blog/{{$blog->id}}";
            });
            $(".btn_display_comments").click(function () {
               let blog_id = $("#myheader").data('blog_id');
                document.location = "/blog/"+blog_id+"?show_comments=yes#bottom";
            });
            $(".btn_leave_comment").click(function () {
                $("#comment_section").slideToggle();
                $(".long_description").toggle();
                $("#comments").fadeOut('fast');
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
                       $(".div_error").removeClass("alert-success").addClass("alert-danger").html(response.msg).fadeIn('slow');
                   }else{
                       $(".div_error").removeClass("alert-danger").addClass("alert-success").html(response.msg).fadeIn('slow');
                   }
                   close_div = setInterval(close_alert_divs, 5000);
               });
            });
            close_div = setInterval(close_alert_divs, 5000);
            function close_alert_divs() {
                $(".div_error").fadeOut('fast');
                clearInterval(close_div);
            }
        });


    </script>
    <style>
        .comment_text p{
            text-align: left !important;
        }
        .comment_id{
            height: 50px;
            width: 50px;
            border-radius: 50%;
            text-align: center;
            line-height: 50px;
            font-weight: bolder;
            background-color: #dad285;
            color: #950909;
            position: relative;
            left: 0;
            top: 0;
            z-index: 100;
            float: left;
            margin-right: 20px;
        }
        .comment_links a:hover{
            color: darkblue;
            text-decoration: underline;
        }
        .comment_links a{
            text-decoration: none;
            color: darkred;
        }

        .comment_links{
            text-align: center;
            background-color: #dad284;
            margin: 10px;
            padding: 10px;
            border-radius: 10px;
        }

        .comment_text{
            background-color: #f8f7ed;
            border-radius: 8px;
            padding: 5px;
            min-height: 100px;
            max-height: 500px;
            overflow: auto;
            text-align: left;
        }
        .single_comment p{
            color: grey;
            padding-top: 10px;
            text-align: right;
        }
        .single_comment{
            border-top: 1px solid black;
            padding: 10px;
            margin: 10px;
        }
        #comments{
            width: 88%;
            min-height: 30%;
            max-height: 90%;
            z-index: 99;
            margin: 20px auto;
            padding: 20px;
            background: #f0e68c;
            overflow: auto;
            border-left: 8px solid darkred;
            border-right: 8px solid darkred;
        }
        .div_number_of_comments{
            text-align: center;
            margin-bottom: 20px;
        }
        .stars{
            text-align: center;
        }
        .rating_star {
            width: 23px;
            display: inline-block;
        }

        .rating {
            width: 100%;
            background-color: greenyellow;
            padding: 4px;
        }
        .number_of_comments{
            background-color: black;
            color: gold;
            padding: 5px;
            border-radius: 5px;
        }
        .long_description{
        }
        .btn_rates{
            text-align: center;
        }
        #comment_section textarea{
            border-radius: 12px;
            width: 80%;
            height: 200px;
            min-height: 150px;
            max-height: 300px;
            margin-top: 30px;
            padding: 5px;
        }
        #comment_section{
            text-align: center;
            display: none;
        }

    </style>
@stop

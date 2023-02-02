@extends('master')
@section('title', 'Uzbek Blogs')
@section('content')
    <header>
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
    <main>

        <section class="py-5 text-center container">
            <h1>Uz blogs</h1>
            <hr>
            <form action="/" method="get">
                <p>
                    <label for="keyword">Search: <input value="{{$request->keyword}}" type="text" name="keyword"
                                                        placeholder="Your keyword"></label>
                    <button class="btn btn-info" type="submit">Search</button>
                </p>
            </form>
            <hr>
        </section>


        <div class="album py-5 bg-light">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    @foreach($blogs as $blog)
                        <div class="col">
                            <div class="card shadow-sm">
                                <img class="bd-placeholder-img card-img-top" src="{{$blog->banner_image}}"
                                     alt="Blog Image">
                                <div class="card-body">
                                    <p class="card-text">{{$blog->title}}</p>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <table class="table table-borderless">
                                            <tr>
                                                <td>

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
                                                           for($index=0; $index<$stars; $index++){
                                                               echo "<img class=\"rating_star\" src=\"/img/star_rating.png\"  alt=\"One star\">";

                                                           }

                                                        @endphp

                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="btn-group">
                                                        <a href="/blog/{{$blog->id}}"
                                                           class="btn btn-sm btn-outline-secondary">Read More</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>
        </div>

        <style>
            td {
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

            .card-img-top {
                width: 100%;
                height: 225px;
            }
        </style>

    </main>
    @include('footer')
@stop

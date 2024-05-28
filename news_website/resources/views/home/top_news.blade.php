<!doctype html>
<html class="no-js" lang="zxx">

<head>
    @include('home.css')
</head>

<body>

    @include('home.header')

    <section class="blog_area section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        @foreach ($news_data as $news)
                        <article class="blog_item">
                            <div class="blog_item_img">
                                <img class="card-img rounded-0" src="{{$news->image_url ??asset('news_image/'.$news->linkimage)}}" alt="{{$news->title}}">
                                <a href="#" class="blog_item_date">
                                    <h3>{{date('d', strtotime($news->created_at))}}</h3>
                                    <p>{{date('M', strtotime($news->created_at))}}</p>
                                </a>
                            </div>

                            <div class="blog_details">
                                <a class="d-inline-block" href="{{url('details',$news->id)}}">
                                    <h2>{{$news->title}}</h2>
                                </a>


                            </div>
                        </article>

                        @endforeach

                        


                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                {{$news_data->onEachSide(2)->links()}}

                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <p>Advertisement</p>
                                    </div>
                                </div>
                            </form>
                        </aside>

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Advertisement</h4>
                            <ul class="list cat-list">
                                <li>
                                    <a href="#" class="d-flex">
                                        <p>Advertisement</p>
                                        <p>(37)</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p></p>
                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p> </p>
                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p></p>
                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p></p>
                                        <p></p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" class="d-flex">
                                        <p></p>
                                        <p></p>
                                    </a>
                                </li>
                            </ul>
                        </aside>

                        <aside class="single_sidebar_widget popular_post_widget">
                            <h3 class="widget_title">Advertisement</h3>
                            <div class="media post_item">
                                <img src="assets/img/post/post_1.png" alt="post">
                                <div class="media-body">
                                    <a href="single-blog.html">
                                        <h3>Advertisement</h3>
                                    </a>
                                    <p></p>
                                </div>
                            </div>
                            
                        </aside>
                        


                        
                    </div>
                </div>
            </div>
        </div>
    </section>


    @include('home.footer')



</body>

</html>
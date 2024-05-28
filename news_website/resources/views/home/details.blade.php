<!doctype html>
<html class="no-js" lang="zxx">

<head>
    @include('home.css')
</head>

<body>

    @include('home.header')

    <main>
        <!-- About US Start -->
        <div class="about-area">
            <div class="container">
                <!-- Hot Aimated News Tittle-->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="trending-tittle">
                            <strong>Trending now</strong>
                            <!-- <p>Rem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                            <div class="trending-animated">
                                <ul id="js-news" class="js-hidden">
                                    @php
                                    $count = 0;
                                    @endphp

                                    @foreach ($news_list as $news)
                                    @if ($news->league_id == $league_list->where('league_name', 'Mới nhất')->first()->id)
                                    <li class="news-item">{{ $news->title }}</li>
                                    @php
                                    $count++;
                                    @endphp
                                    @if ($count == 3)
                                    @break
                                    @endif
                                    @endif
                                    @endforeach

                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <!-- Trending Tittle -->
                        <div class="about-right mb-90">
                            <div class="about-img">
                                <img src="{{$news_data->first()->image_url ??asset('news_image/'.$news_data->first()->linkimage)}}" alt="">
                            </div>
                            <div class="section-tittle mb-30 pt-30">
                                <h3>{{$news_data->first()->title}}</h3>
                            </div>
                            <section>

                                <div>
                                    {!! $news_data->first()->content !!}
                                </div>
                            </section>


                            <div class="social-share pt-30">
                                <div class="section-tittle">
                                    <h3 class="mr-20">Share:</h3>
                                    <ul>
                                        <li><a href="#"><img src="{{asset('assets/img/news/icon-ins.png')}}" alt=""></a></li>
                                        <li><a href="#"><img src="{{asset('assets/img/news/icon-fb.png')}}" alt=""></a></li>
                                        <li><a href="#"><img src="{{asset('assets/img/news/icon-tw.png')}}" alt=""></a></li>
                                        <li><a href="#"><img src="{{asset('assets/img/news/icon-yo.png')}}" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- From -->
                        <div class="row">
                            <div class="col-lg-8">



                                <form class="form" action="#" method="" >
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="comment"><strong>
                                                        <h4>Bình luận</h4>
                                                    </strong></label>
                                                <textarea class="form-control w-100 error" name="comment" id="comment" cols="30" rows="5" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="Enter Message"></textarea>
                                            </div>
                                        </div>

                                    </div>
                                    <input type="submit" class="button button-contactForm boxed-btn" value="Gửi">

                                  
                                </form>


                            </div>
                        </div>
                        <div class="row container-fluid mt-80">
                                <div class="card mb-3">
                                    <div class="card-body">
                                        <div class="d-flex align-items-center mb-2">
                                            <!-- <img src="avatar.jpg" class="rounded-circle mr-2" width="40" height="40" alt="Avatar"> -->
                                            <h5 class="mb-0">John Doe</h5>
                                            <small class="text-muted ml-auto">2024-05-25</small>
                                        </div>
                                        <p class="card-text">Bài viết rất hay, tôi đồng ý với những điểm chính trong nội dung.</p>
                                    </div>
                                    
                                </div>
                                <!-- Thêm các comment khác ở đây -->

                        </div>


                    </div>

                    <div class="col-lg-4">
                        <!-- Section Tittle -->
                        <div class="section-tittle mb-40">
                            <h3>Theo dõi chúng tôi</h3>
                        </div>
                        <!-- Flow Socail -->
                        <div class="single-follow mb-45">
                            <div class="single-box">
                                <div class="follow-us d-flex align-items-center">
                                    <div class="follow-social">
                                        <a href="#"><img src="{{asset('assets/img/news/icon-fb.png')}}" alt=""></a>
                                    </div>
                                    <div class="follow-count">
                                        <span>8,045</span>
                                        <p>Fans</p>
                                    </div>
                                </div>
                                <div class="follow-us d-flex align-items-center">
                                    <div class="follow-social">
                                        <a href="#"><img src="{{asset('assets/img/news/icon-tw.png')}}" alt=""></a>
                                    </div>
                                    <div class="follow-count">
                                        <span>8,045</span>
                                        <p>Fans</p>
                                    </div>
                                </div>
                                <div class="follow-us d-flex align-items-center">
                                    <div class="follow-social">
                                        <a href="#"><img src="{{asset('assets/img/news/icon-ins.png')}}" alt=""></a>
                                    </div>
                                    <div class="follow-count">
                                        <span>8,045</span>
                                        <p>Fans</p>
                                    </div>
                                </div>
                                <div class="follow-us d-flex align-items-center">
                                    <div class="follow-social">
                                        <a href="#"><img src="{{asset('assets/img/news/icon-yo.png')}}" alt=""></a>
                                    </div>
                                    <div class="follow-count">
                                        <span>8,045</span>
                                        <p>Fans</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- New Poster -->
                        <div class="news-poster d-none d-lg-block">
                            <img src="{{asset('assets/img/news/news_card.jpg')}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About US End -->
    </main>


    @include('home.footer')



</body>

</html>
<main>
    <!-- Trending Area Start -->
    <div class="trending-area fix">
        <div class="container">
            <div class="trending-main">
                <!-- Trending Tittle -->
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
                        <!-- Trending Top -->
                        <div class="trending-top mb-30">
                            <div class="trend-top-img">
                                @php
                                $top_news = $news_list->sortByDesc('created_at')->first();
                                @endphp
                                <img src="{{ $top_news->image_url ??'news_image/'.$top_news->linkimage }}" alt="{{ $top_news->title }}">
                                <div class="trend-top-cap">
                                    @if($player_list->contains('id', $top_news->player_id))
                                    @if($player_list->where('id', $top_news->player_id)->first()->player_name === 'Null')
                                    <span class="color4">Hot</span>
                                    @else
                                    <span class="color4">{{ $player_list->where('id', $top_news->player_id)->first()->player_name }}</span>
                                    @endif
                                    @elseif($club_list->contains('id', $top_news->club_id))
                                    @if($club_list->where('id', $top_news->club_id)->first()->club_name === 'Null')
                                    <span class="color4">Hot</span>
                                    @else
                                    <span>{{ $club_list->where('id', $top_news->club_id)->first()->club_name ?? 'Hot' }}</span>
                                    @endif
                                    @endif

                                    <h2><a href="{{url('details',$top_news->id)}}">{{$top_news->title}}</a></h2>
                                </div>
                            </div>
                        </div>
                        <!-- Trending Bottom -->
                        <div class="trending-bottom">
                            <div class="row">
                                @php
                                $bottom_news = $news_list->sortByDesc('created_at')->take(4)->skip(1);
                                @endphp

                                @foreach ($bottom_news as $b_news)

                                <div class="col-lg-4">
                                    <div class="single-bottom mb-35">
                                        <div class="trend-bottom-img mb-30">
                                            <img src="{{ $b_news->image_url ??'news_image/'.$b_news->linkimage }}" alt="{{ $b_news->title }}">
                                        </div>
                                        <div class="trend-bottom-cap">
                                            @if($player_list->contains('id', $b_news->player_id))
                                            @if($player_list->where('id', $b_news->player_id)->first()->player_name === 'Null')
                                            <span class="color4">Hot</span>
                                            @else
                                            <span class="color4">{{ $player_list->where('id', $b_news->player_id)->first()->player_name }}</span>
                                            @endif
                                            @elseif($club_list->contains('id', $b_news->club_id))
                                            @if($club_list->where('id', $b_news->club_id)->first()->club_name === 'Null')
                                            <span class="color4">Hot</span>
                                            @else
                                            <span>{{ $club_list->where('id', $b_news->club_id)->first()->club_name ?? 'Hot' }}</span>
                                            @endif
                                            @endif
                                            <h4><a href="{{url('details',$b_news->id)}}">{{$b_news->title}}</a></h4>
                                        </div>
                                    </div>
                                </div>

                                @endforeach



                            </div>
                        </div>
                    </div>
                    <!-- Right content -->
                    <div class="col-lg-4">
                        @php
                        $right_news = $news_list->sortByDesc('created_at')->take(9)->skip(4);
                        @endphp
                        @foreach ($right_news as $r_news)
                        <div class="trand-right-single d-flex">
                            <div class="trand-right-img">
                                <img src="{{ $r_news->image_url ??'news_image/'.$r_news->linkimage }}" alt="{{ $r_news->title }}" style="width:120px;height:100px">
                            </div>
                            <div class="trand-right-cap">
                                @if($player_list->contains('id', $r_news->player_id))
                                @if($player_list->where('id', $r_news->player_id)->first()->player_name === 'Null')
                                <span class="color4">Hot</span>
                                @else
                                <span class="color4">{{ $player_list->where('id', $r_news->player_id)->first()->player_name }}</span>
                                @endif
                                @elseif($club_list->contains('id', $r_news->club_id))
                                @if($club_list->where('id', $r_news->club_id)->first()->club_name === 'Null')
                                <span class="color4">Hot</span>
                                @else
                                <span class="color4">{{ $club_list->where('id', $r_news->club_id)->first()->club_name ?? 'Hot' }}</span>
                                @endif
                                @endif
                                <h4><a href="{{url('details',$r_news->id)}}">{{$r_news->title}}</a></h4>

                            </div>
                        </div>

                        @endforeach



                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Trending Area End -->
    <!--   Weekly-News start -->
    <div class="weekly-news-area pt-50">
        <div class="container">
            <div class="weekly-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Chuyển nhượng</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="weekly-news-active dot-style d-flex dot-style">

                            @php
                            $chuyennhuong_news = $news_list->where('league_id', $league_list->firstWhere('league_name', 'Chuyển nhượng')->id)->sortByDesc('created_at')->take(5);
                            @endphp
                            @foreach ($chuyennhuong_news as $chuyennhuong)
                            <div class="weekly-single">
                                <div class="weekly-img">
                                    <img src="{{ $chuyennhuong->image_url ??'news_image/'.$chuyennhuong->linkimage }}" alt="" style="width:380x;height:400px">
                                </div>
                                <div class="weekly-caption">
                                    @if($player_list->contains('id', $chuyennhuong->player_id))
                                    @if($player_list->where('id', $chuyennhuong->player_id)->first()->player_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $player_list->where('id', $chuyennhuong->player_id)->first()->player_name }}</span>
                                    @endif
                                    @elseif($club_list->contains('id', $chuyennhuong->club_id))
                                    @if($club_list->where('id', $chuyennhuong->club_id)->first()->club_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $club_list->where('id', $chuyennhuong->club_id)->first()->club_name ?? 'Hot' }}</span>
                                    @endif
                                    @endif
                                    <h4><a href="{{url('details',$chuyennhuong->id)}}">{{$chuyennhuong->title}}</a></h4>
                                </div>
                            </div>

                            @endforeach




                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Weekly-News -->
    <!-- Whats New Start -->

    <!-- Whats New End -->
    <!--   Weekly2-News start -->
    <div class="weekly2-news-area  weekly2-pading gray-bg">
        <div class="container">
            <div class="weekly2-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Ngoại hạng Anh</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="weekly2-news-active dot-style d-flex dot-style">
                            @php
                            $premierleague_news = $news_list->where('league_id', $league_list->firstWhere('league_name', 'Premier League')->id)->sortByDesc('created_at')->take(5);
                            @endphp

                            @foreach ($premierleague_news as $premierleague)
                            <div class="weekly2-single">
                                <div class="weekly2-img">
                                    <img src="{{ $premierleague->image_url ??'news_image/'.$premierleague->linkimage }}" alt="" style="width:270px;height:180px">
                                </div>
                                <div class="weekly2-caption">
                                    @if($player_list->contains('id', $premierleague->player_id))
                                    @if($player_list->where('id', $premierleague->player_id)->first()->player_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $player_list->where('id', $premierleague->player_id)->first()->player_name }}</span>
                                    @endif
                                    @elseif($club_list->contains('id', $premierleague->club_id))
                                    @if($club_list->where('id', $premierleague->club_id)->first()->club_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $club_list->where('id', $premierleague->club_id)->first()->club_name ?? 'Hot' }}</span>
                                    @endif
                                    @endif

                                    <p>{{ date('d-m-Y', strtotime($premierleague->created_at)) }}</p>
                                    <h4><a href="{{url('details',$premierleague->id)}}">{{$premierleague->title}}</a></h4>
                                </div>
                            </div>
                            @endforeach



                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Weekly-News -->
    
    <!--  Recent Articles start -->
    <div class="recent-articles">
        <div class="container">
            <div class="recent-wrapper">
                <!-- section Tittle -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-tittle mb-30">
                            <h3>Bóng đá Việt Nam </h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="recent-active dot-style d-flex dot-style">
                            @php
                            $category_vn = $category_list->where('category_name','Việt Nam')->first()->id;
                            $league_vn = $league_list->where('category_id', $category_vn)->pluck('id');
                            $vietnam_news = $news_list->whereIn('league_id', $league_vn)->sortByDesc('created_at')->take(5);
                            @endphp

                            @foreach ($vietnam_news as $vietnam)

                            <div class="single-recent mb-100">
                                <div class="what-img">
                                    <img src="{{ $vietnam->image_url ??'news_image/'.$vietnam->linkimage }}" alt="" style="width:370px;height:350px">
                                </div>
                                <div class="what-cap">
                                    @if($player_list->contains('id', $vietnam->player_id))
                                    @if($player_list->where('id', $vietnam->player_id)->first()->player_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $player_list->where('id', $vietnam->player_id)->first()->player_name }}</span>
                                    @endif
                                    @elseif($club_list->contains('id', $vietnam->club_id))
                                    @if($club_list->where('id', $vietnam->club_id)->first()->club_name === 'Null')
                                    <span class="color1">Hot</span>
                                    @else
                                    <span class="color1">{{ $club_list->where('id', $vietnam->club_id)->first()->club_name ?? 'Hot' }}</span>
                                    @endif
                                    @endif

                                    <h4><a href="{{url('details',$vietnam->id)}}">{{$vietnam->title}}</a></h4>
                                </div>
                            </div>

                            @endforeach


                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</main>
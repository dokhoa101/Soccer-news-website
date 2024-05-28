<header>
    <!-- Header Start -->
    <div class="header-area">
        <div class="main-header ">
            <div class="header-top black-bg d-none d-md-block">
                <div class="container">
                    <div class="col-xl-12">
                        <div class="row d-flex justify-content-between align-items-center">
                            <div class="header-info-left">
                                <ul>
                                    <li><img src="assets/img/icon/header_icon1.png" alt="">{{ now()->format('l, jS F, Y') }}</li>
                                </ul>
                            </div>
                            <div class="header-info-right">
                                <ul class="header-social">
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    <li> <a href="#"><i class="fab fa-pinterest-p"></i></a></li>

                                    @if (Route::has('login'))
                                    @auth
                                    <li>
                                        <form id="logoutForm" method="POST" action="{{ route('logout') }}">
                                            @csrf
                                            <a href="#" onclick="document.getElementById('logoutForm').submit();">Logout</a>

                                            <!-- <input type="submit" value="Logout"> -->
                                        </form>
                                    </li>
                                    @else
                                    <li> <a href="{{url('/login')}}">Login</a></li>
                                    <li> <a href="{{url('/register')}}">Register</a></li>
                                    @endauth

                                    @endif




                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-mid d-none d-md-block">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-3 col-lg-3 col-md-3">
                            <div class="logo">
                                <a href="/"><img src="{{asset('assets/img/logo/logo.png')}}" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-9 col-md-9">
                            <div class="header-banner f-right ">
                                <img src="{{asset('assets/img/hero/header_card.jpg')}}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom header-sticky">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-10 col-lg-10 col-md-12 header-flex">
                            <!-- sticky -->
                            <div class="sticky-logo">
                                <a href=""><img src="{{asset('assets/img/logo/logo.png')}}" alt=""></a>
                            </div>
                            <!-- Main-menu -->
                            <div class="main-menu d-none d-md-block">
                                <nav>
                                    <ul id="navigation">
                                        @foreach ($category_list as $category)
                                        @if (in_array($category->category_name, ["Anh", "Pháp", "Tây Ban Nha", "Ý", "Đức","Việt Nam"]))
                                        @if ($league_list->firstWhere('category_id', $category->id))
                                        <li>
                                            <a href="{{url('top_news',[$category->category_name,$category->id])}}">{{$category->category_name}}</a>
                                            <ul class="submenu">
                                                @foreach ($league_list as $league)
                                                @if ($league->category_id == $category->id)
                                                <li><a href="{{url('top_news_specific',[$category->category_name,$category->id,$league->id])}}">{{$league->league_name}}</a></li>
                                                @endif
                                                @endforeach
                                            </ul>
                                        </li>
                                        @else
                                        <li><a href="#">{{$category->category_name}}</a></li>
                                        @endif
                                        @elseif (in_array($category->category_name, ["Mới nhất", "Chuyển nhượng"]))
                                        <li><a href="{{url('top_news',[$category->category_name,$category->id])}}">{{$category->category_name}}</a></li>
                                        @endif
                                        @endforeach

                                        <li><a href="#">Tin khác</a>
                                            <ul class="submenu">
                                                @foreach ($category_list as $category)
                                                @if (!in_array($category->category_name, ["Mới nhất", "Chuyển nhượng", "Anh", "Pháp", "Tây Ban Nha", "Ý", "Đức","Việt Nam"]))
                                                <li><a href="{{url('top_news',[$category->category_name,$category->id])}}">{{$category->category_name}}</a></li>
                                                @endif
                                                @endforeach
                                            </ul>
                                        </li>





                                        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4">
                            <div class="header-right-btn f-right d-none d-lg-block">
                                <i class="fas fa-search special-tag"></i>
                                <div class="search-box">
                                    <form action="{{url('search')}}">
                                        <input type="text" placeholder="Search" name="search">

                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-md-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
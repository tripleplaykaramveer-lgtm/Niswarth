@extends('frontend.layout.index')
@section('main_contant')
    <div id="imageSlider" class="carousel slide" data-bs-ride="carousel" data-bs-interval="4000" data-bs-touch="true">
        <div class="carousel-inner mb-3">

            <!-- Slide 1 -->
            <div class="carousel-item active">
                <img src="{{ asset('assest/dashtream/website/img/ngohome2.jpg') }}" class="img-fluid" width="650"
                    alt="" alt="Donation of school supplies" />

                <div class="card-home-overlay align-left">
                    <div class="carousel-card">
                        <h1>Our Vision: Shared Humanity</h1>
                        <p>We believe everyone has something to give. From books to blankets—your items can bring warmth,
                            hope, and learning.</p>
                        <a href="#" class="btn btn-donate mt-2" data-bs-toggle="modal" data-bs-target="#loginModal">
                            Donate Items
                        </a>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item">
                <img src="{{ asset('assest/dashtream/website/img/ngohome1.jpg') }}" alt="People donating">
                <div class="card-home-overlay align-right">
                    <div class="carousel-card">
                        <h1>Your Unused Items Can Change Lives</h1>
                        <p>Don’t throw it—donate it. Clothes, toys, utensils, and more can be a lifeline for someone in
                            need.</p>
                        <a href="#" class="btn btn-donate mt-2" data-bs-toggle="modal"
                            data-bs-target="#loginModal">Contribute Now</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item">
                <img src="{{ asset('assest/dashtream/website/img/ngohome3.jpg') }}" alt="Community impact">
                <div class="card-home-overlay align-left">
                    <div class="carousel-card">
                        <h1>From Your Hands to Their Hearts</h1>
                        <p>Each item you share becomes part of someone’s story. Join our movement of meaningful giving.</p>
                        <a href="#" class="btn btn-donate mt-2" data-bs-toggle="modal"
                            data-bs-target="#loginModal">Start Donating</a>
                    </div>
                </div>
            </div>

        </div>

        <!-- Indicators -->
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#imageSlider" data-bs-slide-to="0" class="active"
                aria-current="true"></button>
            <button type="button" data-bs-target="#imageSlider" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#imageSlider" data-bs-slide-to="2"></button>
        </div>
    </div>


    <section class="ngo-showcase py-5">
        <div class="container">
            <h1 class="section-heading-ngo text-center mb-5">Join Us in Making a Difference</h1>

            <div class="row g-4 justify-content-center align-items-stretch">
                <!-- Card 1 -->
                <div class="col-md-4 col-sm-6 col-12">
                    <div class="illustration-item border text-center p-3 shadow-sm rounded bg-white">
                        <div class="illustration-box">
                            <img src="{{ asset('assest/dashtream/website/img/illustration2.png') }}"
                                alt="Education Initiative" class="illustration-img">
                        </div>
                        <h4 class="illustration-title mt-3">Educate a Child,Build a Future</h4>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="col-md-4 col-sm-6 col-12">
                    <div class="illustration-item  border text-center p-3 shadow-sm rounded bg-white">
                        <div class="illustration-box">
                            <img src="{{ asset('assest/dashtream/website/img/illustration1.png') }}"
                                alt="Healthcare Program" class="illustration-img">
                        </div>
                        <h4 class="illustration-title mt-3">Your Support,Saves Lives</h4>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="col-md-4 col-sm-6 col-12">
                    <div class="illustration-item border text-center p-3 shadow-sm rounded bg-white">
                        <div class="illustration-box">
                            <img src="{{ asset('assest/dashtream/website/img/illustration2.png') }}"
                                alt="Community Development" class="illustration-img">
                        </div>
                        <h4 class="illustration-title mt-3">Together, We Can Create Change</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="education-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">EDUCATION</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('education.list') }}'">
                    View All
                </button>
            </div>
            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-648px, 0px, 0px); transition: all; width: 2160px;">
                        @foreach ($educations as $education)
                            <div class="owl-item cloned" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ asset('storage/' . $education->image) }}'); background-size: cover;">
                                    <div class="item-desc text-white">
                                        <h3>{{ $education->title }}</h3>
                                        <p>{{ $education->description }}</p>
                                        <button class="card-button btn btn-primary stepper-btn"
                                            data-id="{{ $education->id }}" data-context="education" data-bs-toggle="modal"
                                            data-bs-target="#detailModal">
                                            {{ $education->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="medicine-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">MEDICINE</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('mediciness.list') }}'">
                    View All
                </button>
            </div>
            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-648px, 0px, 0px); transition: all; width: 2376px;">
                        @foreach ($medicines as $medicine)
                            <div class="owl-item cloned" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ asset('storage/' . $medicine->image) }}'); background-size: cover; background-position: center;">
                                    <div class="item-desc text-white bg-dark bg-opacity-50 p-3 rounded">
                                        <h3>{{ $medicine->title }}</h3>
                                        <p>{{ $medicine->description }}</p>
                                        <button class="card-button btn btn-primary stepper-btn"
                                            data-id="{{ $medicine->id }}" data-context="medicine" data-bs-toggle="modal"
                                            data-bs-target="#detailModal">
                                            {{ $medicine->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section id="free-food-water-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">FREE FOOD &amp; WATER</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('foodwater.list') }}'">
                    View All
                </button>

            </div>
            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-648px, 0px, 0px); transition: 0.25s; width: 1728px;">
                        @foreach ($foodWaters as $item)
                            <div class="owl-item" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ asset('storage/' . $item->image) }}');">
                                    <div class="item-desc">
                                        <h3>{{ $item->title }}</h3>
                                        <p>{{ $item->description }}</p>
                                        <button class="card-button btn btn-primary">
                                            {{ $item->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span
                            aria-label="Previous">‹</span></button><button type="button" role="presentation"
                        class="owl-next"><span aria-label="Next">›</span></button></div>
                <div class="owl-dots disabled"><button role="button"
                        class="owl-dot active"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button></div>
            </div>
        </div>
    </section>

    <section id="clothes-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">CLOTHES</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('clothes.list') }}'">
                    View All
                </button>
            </div>
            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-864px, 0px, 0px); transition: 0.25s; width: 1728px;">
                        @foreach ($clothes as $item)
                            <div class="owl-item cloned" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ asset('storage/' . $item->image) }}');">
                                    <div class="item-desc">
                                        <h3>{{ $item->title }}</h3>
                                        <p>{{ $item->description }}</p>
                                        <button class="card-button btn btn-primary stepper-btn"
                                            data-id="{{ $item->id }}" data-context="clothes" data-bs-toggle="modal"
                                            data-bs-target="#detailModal">
                                            {{ $education->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span
                            aria-label="Previous">‹</span></button><button type="button" role="presentation"
                        class="owl-next"><span aria-label="Next">›</span></button></div>
                <div class="owl-dots disabled"><button role="button" class="owl-dot"><span></span></button><button
                        role="button" class="owl-dot active"><span></span></button></div>
            </div>
        </div>
    </section>

    <section id="tree-installation-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">TREE INSTALLATION</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('treeinstallation.list') }}'">
                    View All
                </button>

            </div>
            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">
                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-648px, 0px, 0px); transition: all; width: 1728px;">
                        @foreach ($treeInstallations as $tree)
                            <div class="owl-item cloned" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ asset('storage/' . $tree->image) }}');">
                                    <div class="item-desc">
                                        <h3>{{ $tree->title }}</h3>
                                        <p>{{ $tree->description }}</p>
                                        <button class="card-button btn btn-primary stepper-btn"
                                            data-id="{{ $tree->id }}" data-context="tree" data-bs-toggle="modal"
                                            data-bs-target="#detailModal">
                                            {{ $education->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                </div>
                <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span
                            aria-label="Previous">‹</span></button><button type="button" role="presentation"
                        class="owl-next"><span aria-label="Next">›</span></button></div>
                <div class="owl-dots disabled"><button role="button"
                        class="owl-dot active"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button></div>
            </div>
        </div>
    </section>

    <section id="spiritual-section" class="game-section">
        <div class="container">
            <div class="d-flex align-items-center justify-content-between mb-4 border-bottom ">
                <h2 class="fs-4 m-0 align-middle">SPIRITUAL</h2>
                <button class="gradient-button" onclick="window.location.href='{{ route('spiritual.list') }}'">
                    View All
                </button>

            </div>

            <div class="owl-carousel custom-carousel owl-theme owl-loaded owl-drag">

                <div class="owl-stage-outer">
                    <div class="owl-stage"
                        style="transform: translate3d(-864px, 0px, 0px); transition: all; width: 3456px;">
                        @foreach ($spirituals as $spiritual)
                            <div class="owl-item" style="width: auto;">
                                <div class="item"
                                    style="background-image: url('{{ \App\Helper\Helper::showImage($spiritual->image, true) }}');">
                                    <div class="item-desc">
                                        <h3>{{ $spiritual->title }}</h3>
                                        <p>{{ $spiritual->description }}</p>
                                        <button class="card-button btn btn-primary stepper-btn"
                                            data-id="{{ $spiritual->id }}" data-context="spiritual"
                                            data-bs-toggle="modal" data-bs-target="#detailModal">
                                            {{ $spiritual->button_text ?? 'Donate Now' }}
                                        </button>
                                    </div>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
                <div class="owl-nav disabled"><button type="button" role="presentation" class="owl-prev"><span
                            aria-label="Previous">‹</span></button><button type="button" role="presentation"
                        class="owl-next"><span aria-label="Next">›</span></button></div>
                <div class="owl-dots"><button role="button" class="owl-dot active"><span></span></button><button
                        role="button" class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button><button role="button"
                        class="owl-dot"><span></span></button></div>
            </div>
        </div>
    </section>

    <div class="hero-wrapper">
        <div class="hero-image">
            <div class="hero-overlay"></div>
            <div class="hero-content">
                <h1><span class="highlight-text">Our Impact</span></h1>
                <h2 class="subheading">See the difference your donations make</h2>
            </div>
        </div>

        <div class="content-wrapper" id="gallery">
            <div class="p-4">
                <div class="scrolling-marquee">
                    <div class="scrolling-wrapper">
                        <div class="scrolling-content">
                            <!-- Card 1 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-4u70uaphr0u0pts0lbk5t9j3n6-20170728010817.Medi.jpeg)">
                                    <div class="card-overlay">
                                        <h3>Community Event</h3>
                                        <p>Supporting local initiatives with enthusiasm.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card 2 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://www.nasscomfoundation.org/blog/wp-content/uploads/2024/07/social-inno1.jpg)">
                                    <div class="card-overlay">
                                        <h3>Social Innovation</h3>
                                        <p>Driving change through innovative solutions.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card 3 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://media.istockphoto.com/id/1223036866/photo/monks-of-ramakrishna-mission-donating-foods-during-lockdown-period.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=BYMOdUqSaeVoO5vQrjj5cu_d6dplk8rlaiA-RPIMcjk=)">
                                    <div class="card-overlay">
                                        <h3>Food Donation</h3>
                                        <p>Helping communities during tough times.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card 4 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://pbs.twimg.com/media/E3BiffnVkAYcpfA.jpg)">
                                    <div class="card-overlay">
                                        <h3>Charity Drive</h3>
                                        <p>Spreading kindness and support.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card 5 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://s3.ap-south-1.amazonaws.com/rzp-prod-merchant-assets/payment-link/description/20190122164349_838A3181_D5P3M1bwCyu0x7.jpg)">
                                    <div class="card-overlay">
                                        <h3>Fundraising</h3>
                                        <p>Empowering dreams with collective effort.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card 6 -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/05/10115217/Inside-Image-Horizontal-20.jpeg)">
                                    <div class="card-overlay">
                                        <h3>Travel &amp; Leisure</h3>
                                        <p>Exploring new horizons together.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Duplicate cards for infinite scroll -->
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://s3.ap-southeast-1.amazonaws.com/images.asianage.com/images/aa-Cover-4u70uaphr0u0pts0lbk5t9j3n6-20170728010817.Medi.jpeg)">
                                    <div class="card-overlay">
                                        <h3>Community Event</h3>
                                        <p>Supporting local initiatives with enthusiasm.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://www.nasscomfoundation.org/blog/wp-content/uploads/2024/07/social-inno1.jpg)">
                                    <div class="card-overlay">
                                        <h3>Social Innovation</h3>
                                        <p>Driving change through innovative solutions.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://media.istockphoto.com/id/1223036866/photo/monks-of-ramakrishna-mission-donating-foods-during-lockdown-period.jpg?s=612x612&amp;w=0&amp;k=20&amp;c=BYMOdUqSaeVoO5vQrjj5cu_d6dplk8rlaiA-RPIMcjk=)">
                                    <div class="card-overlay">
                                        <h3>Food Donation</h3>
                                        <p>Helping communities during tough times.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://pbs.twimg.com/media/E3BiffnVkAYcpfA.jpg)">
                                    <div class="card-overlay">
                                        <h3>Charity Drive</h3>
                                        <p>Spreading kindness and support.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://s3.ap-south-1.amazonaws.com/rzp-prod-merchant-assets/payment-link/description/20190122164349_838A3181_D5P3M1bwCyu0x7.jpg)">
                                    <div class="card-overlay">
                                        <h3>Fundraising</h3>
                                        <p>Empowering dreams with collective effort.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-image"
                                    style="background-image: url(https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2021/05/10115217/Inside-Image-Horizontal-20.jpeg)">
                                    <div class="card-overlay">
                                        <h3>Travel &amp; Leisure</h3>
                                        <p>Exploring new horizons together.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

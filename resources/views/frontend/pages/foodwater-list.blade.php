@extends('frontend.layout.index')

@section('main_contant')
    <section id="free-food-water-section" class="game-section mt-4 mb-4">
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
                <div class="owl-dots disabled"><button role="button" class="owl-dot active"><span></span></button><button
                        role="button" class="owl-dot"><span></span></button></div>
            </div>
        </div>
    </section>
@endsection

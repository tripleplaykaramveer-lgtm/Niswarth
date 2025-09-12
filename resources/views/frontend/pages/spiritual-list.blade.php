@extends('frontend.layout.index')

@section('main_contant')
<div class="container py-5">
    <h2 class="mb-4">All Spiritual</h2>

    <div class="row">
        @foreach ($spirituals as $spiritual)
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <img src="{{ \App\Helper\Helper::showImage($spiritual->image, true) }}"
                         class="card-img-top"
                         alt="{{ $spiritual->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $spiritual->title }}</h5>
                        <p class="card-text">{{ Str::limit($spiritual->description, 100) }}</p>
                        <button class="btn btn-primary stepper-btn"
                            data-id="{{ $spiritual->id }}"
                            data-context="spiritual"
                            data-bs-toggle="modal"
                            data-bs-target="#detailModal">
                            {{ $spiritual->button_text ?? 'Donate Now' }}
                        </button>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection

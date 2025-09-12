@extends('frontend.layout.index')

@section('main_contant')
<div class="container py-5">
    <h2 class="mb-4">All Clothes</h2>

    <div class="row">
        @foreach ($clothes as $item)
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <img src="{{ asset('storage/' . $item->image) }}" class="card-img-top" alt="{{ $item->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $item->title }}</h5>
                        <p class="card-text">{{ Str::limit($item->description, 100) }}</p>
                        <button class="btn btn-primary stepper-btn"
                            data-id="{{ $item->id }}"
                            data-context="clothes"
                            data-bs-toggle="modal"
                            data-bs-target="#detailModal">
                            {{ $item->button_text ?? 'Donate Now' }}
                        </button>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection

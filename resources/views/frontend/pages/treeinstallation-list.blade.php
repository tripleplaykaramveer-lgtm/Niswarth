@extends('frontend.layout.index')

@section('main_contant')
<div class="container py-5">
    <h2 class="mb-4">All Tree Installations</h2>

    <div class="row">
        @foreach ($treeInstallations as $tree)
            <div class="col-md-4 mb-4">
                <div class="card shadow-sm">
                    <img src="{{ asset('storage/' . $tree->image) }}" class="card-img-top" alt="{{ $tree->title }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $tree->title }}</h5>
                        <p class="card-text">{{ Str::limit($tree->description, 100) }}</p>
                        <button class="btn btn-primary stepper-btn"
                            data-id="{{ $tree->id }}"
                            data-context="tree"
                            data-bs-toggle="modal"
                            data-bs-target="#detailModal">
                            {{ $tree->button_text ?? 'Donate Now' }}
                        </button>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection

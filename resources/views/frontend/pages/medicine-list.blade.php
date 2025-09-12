@extends('frontend.layout.index')
@section('main_contant')
    <div class="container py-5">
        <h2 class="mb-4">All Medicines</h2>

        <div class="row">
            @foreach ($medicines as $medicine)
                <div class="owl-item cloned" style="width: auto;">
                    <div class="item"
                        style="background-image: url('{{ asset('storage/' . $medicine->image) }}'); background-size: cover; background-position: center;">
                        <div class="item-desc text-white bg-dark bg-opacity-50 p-3 rounded">
                            <h3>{{ $medicine->title }}</h3>
                            <p>{{ $medicine->description }}</p>
                            <button class="card-button btn btn-primary stepper-btn" data-id="{{ $medicine->id }}"
                                data-context="medicine" data-bs-toggle="modal" data-bs-target="#detailModal">
                                {{ $medicine->button_text ?? 'Donate Now' }}
                            </button>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
@endsection

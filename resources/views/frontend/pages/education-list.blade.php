@extends('frontend.layout.index')
@section('main_contant')
    <div class="container my-5">
        <h2 class="mb-4">All Education Campaigns</h2>

        <div class="row">
            @foreach ($educations as $education)
                <div class="col-md-4 mb-4">
                    <div class="card h-100"
                        style="background-image: url('{{ asset('storage/' . $education->image) }}'); background-size: cover; background-position: center;">
                        <div class="card-body text-white bg-dark bg-opacity-50">
                            <h5>{{ $education->title }}</h5>
                            <p>{{ Str::limit($education->description, 100) }}</p>
                            <button class="btn btn-primary stepper-btn" data-id="{{ $education->id }}" data-context="education"
                                data-bs-toggle="modal" data-bs-target="#detailModal">
                                {{ $education->button_text ?? 'Donate Now' }}
                            </button>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>

        <!-- pagination -->
        <div class="d-flex justify-content-center">
            {{ $educations->links() }}
        </div>
    </div>
@endsection

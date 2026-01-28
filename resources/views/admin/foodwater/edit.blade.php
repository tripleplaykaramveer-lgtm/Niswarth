@extends('layouts.backend')

@section('content')
<div class="page-wrapper mb-3">
    <div class="page-content">
        <div class="container mt-4">

            <h2>Edit Food & Water</h2>

            {{-- Validation Errors --}}
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul class="mb-0">
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif

            <form action="{{ route('food-water.update', $foodWater->id) }}"
                  method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                {{-- Current Image --}}
                <div class="mb-3">
                    <label class="form-label">Current Image</label><br>

                    @if($foodWater->image)
                        <img src="{{ asset('storage/' . $foodWater->image) }}"
                             class="img-thumbnail mb-2"
                             width="150">
                    @else
                        <p class="text-muted">No image uploaded</p>
                    @endif

                    <input type="file" name="image" class="form-control">
                    @error('image')
                        <span class="text-danger small">{{ $message }}</span>
                    @enderror
                </div>

                {{-- Title --}}
                <div class="mb-3">
                    <label class="form-label">Title <span class="text-danger">*</span></label>
                    <input type="text"
                           name="title"
                           class="form-control"
                           value="{{ old('title', $foodWater->title) }}"
                           required>
                </div>

                {{-- Short Order --}}
                <div class="mb-3">
                    <label class="form-label">Short Order</label>
                    <input type="number"
                           name="short_order"
                           class="form-control"
                           value="{{ old('short_order', $foodWater->short_order) }}">
                </div>

                {{-- Description --}}
                <div class="mb-3">
                    <label class="form-label">Description <span class="text-danger">*</span></label>
                    <textarea name="description"
                              rows="4"
                              class="form-control"
                              required>{{ old('description', $foodWater->description) }}</textarea>
                </div>

                {{-- Button Text --}}
                <div class="mb-3">
                    <label class="form-label">Button Text</label>
                    <input type="text"
                           name="button_text"
                           class="form-control"
                           value="{{ old('button_text', $foodWater->button_text) }}">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
                <a href="{{ route('food-water.index') }}" class="btn btn-secondary">Cancel</a>

            </form>
        </div>
    </div>
</div>
@endsection

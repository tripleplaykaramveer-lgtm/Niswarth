@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">
            <h2>Edit Spiritual</h2>

            <form action="{{ route('spiritual.update', $spiritual->id) }}"
                  method="POST"
                  enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="col-lg-6 mt-2">
                <label class="form-label" for="image">Image</label>
                <div class="img-group mb-2">
                    <img class="" src="{{ asset('storage/' . $spiritual['image']) }}" alt="">
                </div>
                <input class="form-control" id="image" name="image" type="file" value="" />
                @error('image')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
                @enderror
            </div>

                {{-- Title --}}
                <div class="mb-3">
                    <label>Title:</label>
                    <input type="text"
                           name="title"
                           class="form-control"
                           value="{{ old('title', $spiritual->title) }}"
                           required>
                </div>

                {{-- Description --}}
                <div class="mb-3">
                    <label>Description:</label>
                    <textarea name="description"
                              class="form-control"
                              rows="4"
                              required>{{ old('description', $spiritual->description) }}</textarea>
                </div>

                {{-- Button Text --}}
                <div class="mb-3">
                    <label>Button Text:</label>
                    <input type="text"
                           name="button_text"
                           class="form-control"
                           value="{{ old('button_text', $spiritual->button_text) }}">
                </div>

                <button type="submit" class="btn btn-primary">Update</button>
                <a href="{{ route('spiritual.index') }}" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>
@endsection

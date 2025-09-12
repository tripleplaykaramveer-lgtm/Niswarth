@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">
            <h2>Edit Tree</h2>

            <form action="{{ route('tree-installation.update', $education->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label>Current Image:</label><br>
                    @if($education->image)
                        <img src="{{ asset('storage/' . $education->image) }}" width="100">
                    @endif
                </div>

                <div class="mb-3">
                    <label>Change Image:</label>
                    <input type="file" name="image" class="form-control">
                </div>

                <div class="mb-3">
                    <label>Title:</label>
                    <input type="text" name="title" class="form-control" value="{{ $education->title }}" required>
                </div>

                <div class="mb-3">
                    <label>Short Order:</label>
                    <input type="text" name="short_order" class="form-control" value="{{ $education->short_order }}" required>
                </div>

                <div class="mb-3">
                    <label>Description:</label>
                    <textarea name="description" class="form-control" required>{{ $education->description }}</textarea>
                </div>

                <div class="mb-3">
                    <label>Button Text:</label>
                    <input type="text" name="button_text" class="form-control" value="{{ $education->button_text }}">
                </div>

                <button type="submit" class="btn btn-secondary">Update</button>
                <a href="{{ route('education.index') }}" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>
@endsection

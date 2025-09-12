@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">
            <h2>Edit Spiritual</h2>

            <form action="{{ route('spiritual.update', $spiritual->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label>Current Image:</label><br>
                    @if($spiritual->image)
                        <img src="{{ asset('storage/' . $spiritual->image) }}" width="100">
                    @endif
                </div>

                <div class="mb-3">
                    <label>Change Image:</label>
                    <input type="file" name="image" class="form-control">
                </div>

                <div class="mb-3">
                    <label>Title:</label>
                    <input type="text" name="title" class="form-control" value="{{ $spiritual->title }}" required>
                </div>

                <div class="mb-3">
                    <label>Description:</label>
                    <textarea name="description" class="form-control" required>{{ $spiritual->description }}</textarea>
                </div>

                <div class="mb-3">
                    <label>Button Text:</label>
                    <input type="text" name="button_text" class="form-control" value="{{ $spiritual->button_text }}">
                </div>

                <button type="submit" class="btn btn-secondary">Update</button>
                <a href="{{ route('spiritual.index') }}" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>
@endsection

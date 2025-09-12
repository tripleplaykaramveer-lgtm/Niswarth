@extends('layouts.backend')

@section('content')
<div class="page-wrapper mb-3">
    <div class="page-content">
        <div class="container mt-4">
            <h2>Edit Medicine</h2>

            <form action="{{ route('medicine.update', $medicine->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')

                <div class="mb-3">
                    <label>Current Image:</label><br>
                    @if ($medicine->image)
                        <img src="{{ asset('storage/' . $medicine->image) }}" width="100">
                    @endif
                </div>

                <div class="mb-3">
                    <label>Change Image:</label>
                    <input type="file" name="image" class="form-control">
                </div>

                <div class="mb-3">
                    <label>Title:</label>
                    <input type="text" name="title" class="form-control" value="{{ $medicine->title }}" required>
                </div>

                <div class="mb-3">
                    <label>Short Order:</label>
                    <input type="number" name="short_order" class="form-control" value="{{ $medicine->short_order }}">
                </div>

                <div class="mb-3">
                    <label>Description:</label>
                    <textarea name="description" class="form-control" required>{{ $medicine->description }}</textarea>
                </div>

                <div class="mb-3">
                    <label>Button Text:</label>
                    <input type="text" name="button_text" class="form-control" value="{{ $medicine->button_text }}">
                </div>

                <button type="submit" class="btn btn-secondary">Update</button>
                <a href="{{ route('medicine.index') }}" class="btn btn-secondary">Cancel</a>
            </form>
        </div>
    </div>
</div>
@endsection

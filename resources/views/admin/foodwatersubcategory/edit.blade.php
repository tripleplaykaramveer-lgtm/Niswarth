@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2>Edit Food & Water Subcategory</h2>
                <a href="{{ route('foodwater.subcategories') }}" class="btn btn-light px-5">Back</a>
            </div>

            <div class="card p-4">
                <form action="{{ route('foodwater.update', $subcategory->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="row">

                        {{-- Food & Water Category --}}
                        <div class="col-md-6 mb-3">
                            <label for="food_water_id" class="form-label">Food & Water Category</label>
                            <select class="form-select" id="food_water_id" name="food_water_id" required>
                                <option value="">Select</option>
                                @foreach($foodwater as $id => $title)
                                    <option value="{{ $id }}" {{ old('food_water_id', $subcategory->food_water_id) == $id ? 'selected' : '' }}>
                                        {{ $title }}
                                    </option>
                                @endforeach
                            </select>
                            @error('food_water_id')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>

                        {{-- Subcategory Name --}}
                        <div class="col-md-6 mb-3">
                            <label for="name" class="form-label">Subcategory Name</label>
                            <input type="text" class="form-control" id="name" name="name" value="{{ old('name', $subcategory->name) }}" required>
                            @error('name')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>

                        {{-- Title --}}
                        <div class="col-md-6 mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" name="title" value="{{ old('title', $subcategory->title) }}">
                            @error('title')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>

                        {{-- Short Order --}}
                        <div class="col-md-6 mb-3">
                            <label for="short_order" class="form-label">Short Order</label>
                            <input type="number" class="form-control" name="short_order" value="{{ old('short_order', $subcategory->short_order) }}">
                            @error('short_order')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>

                        {{-- Status --}}
                        <div class="col-md-6 mb-3">
                            <label for="status" class="form-label">Status</label>
                            <select class="form-select" id="status" name="status" required>
                                <option value="1" {{ old('status', $subcategory->status) == 1 ? 'selected' : '' }}>Active</option>
                                <option value="0" {{ old('status', $subcategory->status) == 0 ? 'selected' : '' }}>Inactive</option>
                            </select>
                            @error('status')<small class="text-danger">{{ $message }}</small>@enderror
                        </div>

                        <div class="col-12">
                            <button type="submit" class="btn btn-light px-5">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

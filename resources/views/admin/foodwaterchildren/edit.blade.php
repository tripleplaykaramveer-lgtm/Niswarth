@extends('layouts.backend')

@section('styles')
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
@endsection

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="card border-top border-0 border-4 border-white">
            <div class="card-body">
                <div class="border p-4 rounded">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5>Edit Food & Water Child Category</h5>
                        <a href="{{ route('foodwater.children') }}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                    <form action="{{ route('foodwater.children.update', $child->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="row">

                            {{-- Subcategory --}}
                            <div class="col-md-6 mb-3">
                                <label for="food_water_subcategory_id" class="form-label">Food & Water Sub Category</label>
                                <select class="form-select" id="food_water_subcategory_id" name="food_water_subcategory_id" required>
                                    <option value="">Select</option>
                                    @foreach($foodwaterchild as $id => $name)
                                        <option value="{{ $id }}" {{ $child->food_water_subcategory_id == $id ? 'selected' : '' }}>
                                            {{ $name }}
                                        </option>
                                    @endforeach
                                </select>
                                @error('food_water_subcategory_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Name --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Child Name</label>
                                <input type="text" class="form-control" name="name" value="{{ old('name', $child->name) }}" required>
                                @error('name')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Title --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" value="{{ old('title', $child->title) }}">
                                @error('title')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Short Order --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Short Order</label>
                                <input type="number" class="form-control" name="short_order" value="{{ old('short_order', $child->short_order) }}">
                                @error('short_order')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Status --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Status</label>
                                <select class="form-select" name="status" required>
                                    <option value="1" {{ $child->status == '1' ? 'selected' : '' }}>Active</option>
                                    <option value="0" {{ $child->status == '0' ? 'selected' : '' }}>Inactive</option>
                                </select>
                                @error('status')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
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
</div>
@endsection

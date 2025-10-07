@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">
            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2>Edit Mini Child</h2>
                <a href="{{ route('foodwater.minichildren') }}" class="btn btn-light px-5">Back</a>
            </div>

            <div class="card p-4">
                <form action="{{ route('foodwater.minichildren.update', $minichild->id) }}" method="POST">
                    @csrf
                    @method('PUT')

                    <div class="row">
                        {{-- Parent child --}}
                        <div class="col-md-6 mb-3">
                            <label for="food_water_chailderncategory_id" class="form-label">Parent Child Category</label>
                            <select class="form-select" id="food_water_chailderncategory_id" name="food_water_chailderncategory_id" required>
                                <option value="">Select</option>
                                @foreach($foodwaterchild as $id => $name)
                                    <option value="{{ $id }}" {{ old('food_water_chailderncategory_id', $minichild->food_water_chailderncategory_id) == $id ? 'selected' : '' }}>
                                        {{ $name }}
                                    </option>
                                @endforeach
                            </select>
                            @error('food_water_chailderncategory_id') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>

                        {{-- Name --}}
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Mini Child Name</label>
                            <input type="text" class="form-control" name="name" value="{{ old('name', $minichild->name) }}" required>
                            @error('name') <small class="text-danger">{{ $message }}</small> @enderror
                        </div>

                        {{-- Title --}}
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Title</label>
                            <input type="text" class="form-control" name="title" value="{{ old('title', $minichild->title) }}">
                        </div>

                        {{-- Short Order --}}
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Short Order</label>
                            <input type="number" class="form-control" name="short_order" value="{{ old('short_order', $minichild->short_order) }}">
                        </div>

                        {{-- Status --}}
                        <div class="col-md-6 mb-3">
                            <label class="form-label">Status</label>
                            <select name="status" class="form-select" required>
                                <option value="1" {{ old('status', $minichild->status) == '1' ? 'selected' : '' }}>Active</option>
                                <option value="0" {{ old('status', $minichild->status) == '0' ? 'selected' : '' }}>Inactive</option>
                            </select>
                        </div>

                        <div class="col-12">
                            <button class="btn btn-light px-5" type="submit">Update</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

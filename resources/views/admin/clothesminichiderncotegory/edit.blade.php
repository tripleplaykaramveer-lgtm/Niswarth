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
                        <h5 class="mb-0 text-white">
                            <i class="bx bxs-user me-1 font-22 text-white"></i>
                            Edit Clothes Mini Chaildren Categories
                        </h5>
                        <a href="{{ route('clothesminichaildrencategory.index') }}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                    {{-- Form Start --}}
                    <form action="{{ route('clothesminichaildrencategory.update', $minichaildrencategory->id) }}" method="POST">
                        @csrf

                        <div class="row">
                            {{-- Parent Category --}}
                            <div class="col-md-6 mb-3">
                                <label for="id" class="form-label">Clothes Subcategories Name</label>
                                <select class="form-select" id="id" name="id">
                                    <option value="">Select</option>
                                    @if(isset($ClothChaildernCategory) && $ClothChaildernCategory->isNotEmpty())
                                        @foreach($ClothChaildernCategory as $id => $ClothChaildernCategories)
                                            <option value="{{ $id }}" {{ old('id', $minichaildrencategory->cloth_chailderncategory_id) == $id ? 'selected' : '' }}>
                                                {{ $ClothChaildernCategories }}
                                            </option>
                                        @endforeach
                                    @endif
                                </select>
                                @error('id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Title --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" placeholder="Enter Title"
                                       value="{{ old('title', $minichaildrencategory->title) }}" required>
                                @error('title')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Short Order --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Short Order</label>
                                <input type="number" class="form-control" name="short_order" placeholder="Enter Short Order"
                                       value="{{ old('short_order', $minichaildrencategory->short_order) }}">
                                @error('short_order')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Name --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" name="name" placeholder="Enter Name"
                                       value="{{ old('name', $minichaildrencategory->name) }}" required>
                                @error('name')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Status --}}
                            <div class="col-md-6">
                                <label class="form-label">Status</label>
                                <select class="form-select" id="status" name="status">
                                    <option value="">Select</option>
                                    <option value="1" {{ old('status', $minichaildrencategory->status) == '1' ? 'selected' : '' }}>Active</option>
                                    <option value="0" {{ old('status', $minichaildrencategory->status) == '0' ? 'selected' : '' }}>Inactive</option>
                                </select>
                                @error('status')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            {{-- Submit --}}
                            <div class="col-12 mt-3">
                                <button type="submit" class="btn btn-light px-5">Update</button>
                            </div>
                        </div>
                    </form>
                    {{-- Form End --}}
                </div>
            </div>
        </div>
    </div>
</div>

{{-- Toastr JS --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    @if(session('success'))
        toastr.success("{{ session('success') }}");
    @endif

    @if(session('error'))
        toastr.error("{{ session('error') }}");
    @endif
</script>
@endsection

@extends('layouts.backend')
{{-- Toastr CSS --}}
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
                            <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>edit Spiritual
                                Chaildren Categories</h5>
                            <a href="{{ route('spiritualchaildrencategory.index') }}" class="btn btn-light px-5">Back</a>
                        </div>
                        <hr>

                        {{-- Form Start --}}
                        <form action="{{ route('spiritualchaildrencategory.update', $chaildrencategory->id) }}"
                            method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="spiritual_subcategory_id" class="form-label">Education Subcategories
                                        Name</label>
                                    <select class="form-select" id="spiritual_subcategory_id"
                                        name="spiritual_subcategory_id">
                                        <option value="">Select</option>

                                        @if (isset($spiritualsubcategorys) && $spiritualsubcategorys->isNotEmpty())
                                            @foreach ($spiritualsubcategorys as $id => $spiritualsubcategory)
                                                <option value="{{ $id }}"
                                                    {{ old('spiritual_subcategory_id', $chaildrencategory->spiritual_subcategory_id) == $id ? 'selected' : '' }}>
                                                    {{ $spiritualsubcategory }}
                                                </option>
                                            @endforeach
                                        @endif
                                    </select>

                                    @error('spiritual_subcategory_id')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Short Order</label>
                                    <input type="number" class="form-control"
                                        value="{{ old('short_order', $chaildrencategory->short_order) }}" name="short_order"
                                        placeholder="Enter Short Order">
                                    @error('short_order')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Title</label>
                                    <input type="text" class="form-control" value="{{ $chaildrencategory->title }}"
                                        name="title" placeholder="Enter Title" required>
                                    @error('title')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text" class="form-control" value="{{ $chaildrencategory->name }}"
                                        name="spiritual_chidern_category" placeholder="Enter name" required>
                                    @error('spiritual_chidern_category')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="col-md-6">
                                    <label for="status" class="form-label">Status</label>

                                    <select class="form-select" id="status" name="status">
                                        <option value="">Select</option>
                                        <option value="1"
                                            {{ old('status', $chaildrencategory->status) == '1' ? 'selected' : '' }}>
                                            Active</option>
                                        <option value="0"
                                            {{ old('status', $chaildrencategory->status) == '0' ? 'selected' : '' }}>
                                            Inactive </option>
                                    </select>
                                    @error('status')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="col-12">
                                    <button type="submit" class="btn btn-light px-5">Submit</button>
                                </div>
                            </div>
                        </form>
                        {{-- Form End --}}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <script>
        @if (session('success'))
            toastr.success("{{ session('success') }}");
        @endif

        @if (session('error'))
            toastr.error("{{ session('error') }}");
        @endif
    </script>
@endsection

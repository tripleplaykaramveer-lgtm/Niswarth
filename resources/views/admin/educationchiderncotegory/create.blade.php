@extends('layouts.backend')
<?php
// dd($educations);
?>
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
                            <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Add Education
                                Chaildern Cotegories</h5>
                            <a href="{{ route('educationchaildrencategory.index') }}" class="btn btn-light px-5">Back</a>
                        </div>
                        <hr>

                        {{-- Form Start --}}
                        <form action="{{ route('educationchaildrencategory.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="educationsubcategory_id" class="form-label">Education Subcategories
                                        Name</label>
                                    <select class="form-select" id="educationsubcategory_id" name="educationsubcategory_id">
                                        <option value="">Select</option>
                                        @if (isset($educationesubcategorys) && $educationesubcategorys->isNotEmpty())
                                            @foreach ($educationesubcategorys as $id => $educationesubcategory)
                                                <option value="{{ $id }}"
                                                    {{ old('educationsubcategory_id') == $id ? 'selected' : '' }}>
                                                    {{ $educationesubcategory }}
                                                </option>
                                            @endforeach
                                        @endif
                                    </select>
                                    @error('educationsubcategory_id')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <!-- Education children categories -->
                                <div class="col-md-6 mb-3">
                                    <label for="education-chidern-category" class="form-label">Education Chaildern
                                        Categories</label>
                                    <select class="form-control" name="education_chidern_category[]"
                                        id="education-chidern-category" multiple>
                                    </select>
                                    @error('education_chidern_category')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <!-- Short Order -->
                                <div class="col-md-6 mb-3">
                                    <label for="short_order" class="form-label">Short Order</label>
                                    <input type="number" class="form-control" id="short_order" name="short_order"
                                        value="{{ old('short_order') }}" placeholder="Enter short order">
                                    @error('short_order')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <!-- Status -->
                                <div class="col-md-6">
                                    <label for="status" class="form-label">Status</label>
                                    <select class="form-select" id="status" name="status">
                                        <option value="">Select</option>
                                        <option value="1" {{ old('status') == '1' ? 'selected' : '' }}>Active</option>
                                        <option value="0" {{ old('status') == '0' ? 'selected' : '' }}>Inactive
                                        </option>
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

    <script>
        $(document).ready(function() {
            $('#education-chidern-category').select2({
                placeholder: "Add Education Chaildern Category",
                tags: true,
                allowClear: true
            });
        });
    </script>

@endsection

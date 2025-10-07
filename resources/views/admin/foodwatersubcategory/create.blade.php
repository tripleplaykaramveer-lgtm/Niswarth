@extends('layouts.backend')

@section('styles')
    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
@endsection

@section('content')
    <div class="page-wrapper">
        <div class="page-content">
            <div class="card border-top border-0 border-4 border-white">
                <div class="card-body">
                    <div class="border p-4 rounded">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Add Food & Water
                                Subcategory</h5>
                            <a href="{{ route('foodwater.subcategories') }}" class="btn btn-light px-5">Back</a>
                        </div>
                        <hr>
                        {{-- SweetAlert Success Message --}}
                        @if (session('success'))
                            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                            <script>
                                document.addEventListener('DOMContentLoaded', function() {
                                    Swal.fire({
                                        icon: 'success',
                                        title: 'Success!',
                                        text: @json(session('success')),
                                        confirmButtonColor: '#28a745',
                                    });
                                });
                            </script>
                        @endif
                        {{-- Form Start --}}
                        <form action="{{ route('foodwater.store') }}" method="POST">
                            @csrf
                            <div class="row">

                                {{-- Food & Water Category --}}
                                <div class="col-md-6 mb-3">
                                    <label for="food_water_id" class="form-label">Food & Water Category</label>
                                    <select class="form-select" id="food_water_id" name="food_water_id" required>
                                        <option value="">Select</option>
                                        @foreach ($foodwater as $id => $title)
                                            <option value="{{ $id }}"
                                                {{ old('food_water_id') == $id ? 'selected' : '' }}>
                                                {{ $title }}
                                            </option>
                                        @endforeach
                                    </select>
                                    @error('food_water_id')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>


                                {{-- Title --}}
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Title</label>
                                    <input type="text" class="form-control" name="title" value="{{ old('title') }}"
                                        placeholder="Enter Title">
                                    @error('title')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                {{-- Short Order --}}
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Short Order</label>
                                    <input type="number" class="form-control" name="short_order"
                                        value="{{ old('short_order') }}" placeholder="Enter Short Order">
                                    @error('short_order')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                {{-- Subcategories --}}
                                <div class="col-md-6 mb-3">
                                    <label for="subcategories" class="form-label">Subcategories</label>
                                    <select class="form-control" name="subcategories[]" id="subcategories"
                                        multiple="multiple" required>
                                    </select>
                                    @error('subcategories')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                {{-- Status --}}
                                <div class="col-md-6 mb-3">
                                    <label for="status" class="form-label">Status</label>
                                    <select class="form-select" id="status" name="status" required>
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

    {{-- JS --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script>
        $(document).ready(function() {
            $('#subcategories').select2({
                placeholder: "Add Subcategories",
                tags: true,
                allowClear: true
            });

            @if (session('success'))
                toastr.success("{{ session('success') }}");
            @endif

            @if (session('error'))
                toastr.error("{{ session('error') }}");
            @endif
        });
    </script>
@endsection

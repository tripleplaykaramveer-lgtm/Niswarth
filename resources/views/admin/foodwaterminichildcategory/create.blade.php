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
                        <h5 class="mb-0 text-white">Add Food & Water Mini Child Category</h5>
                        <a href="{{ route('foodwater.minichildren') }}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                    @if(session('success'))
                        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
                        <script>
                            document.addEventListener('DOMContentLoaded', function() {
                                Swal.fire({ icon: 'success', title: 'Success!', text: @json(session('success')) });
                            });
                        </script>
                    @endif

                    <form action="{{ route('foodwater.minichildren.store') }}" method="POST">
                        @csrf
                        <div class="row">
                            {{-- Parent child select --}}
                            <div class="col-md-6 mb-3">
                                <label for="food_water_chailderncategory_id" class="form-label">Food & Water Child Category</label>
                                <select class="form-select" id="food_water_chailderncategory_id" name="food_water_chailderncategory_id" required>
                                    <option value="">Select</option>
                                    @foreach($foodwaterchild as $id => $name)
                                        <option value="{{ $id }}" {{ old('food_water_chailderncategory_id') == $id ? 'selected' : '' }}>{{ $name }}</option>
                                    @endforeach
                                </select>
                                @error('food_water_chailderncategory_id') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            {{-- Title --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" value="{{ old('title') }}" placeholder="Enter Title">
                                @error('title') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            {{-- Short order --}}
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Short Order</label>
                                <input type="number" class="form-control" name="short_order" value="{{ old('short_order') }}" placeholder="Enter Short Order">
                                @error('short_order') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            {{-- Subcategories (tags) --}}
                            <div class="col-md-6 mb-3">
                                <label for="subcategories" class="form-label">Mini Child Names</label>
                                <select class="form-control" name="subcategories[]" id="subcategories" multiple="multiple" required></select>
                                @error('subcategories') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            {{-- Status --}}
                            <div class="col-md-6 mb-3">
                                <label for="status" class="form-label">Status</label>
                                <select class="form-select" id="status" name="status" required>
                                    <option value="">Select</option>
                                    <option value="1" {{ old('status') == '1' ? 'selected' : '' }}>Active</option>
                                    <option value="0" {{ old('status') == '0' ? 'selected' : '' }}>Inactive</option>
                                </select>
                                @error('status') <small class="text-danger">{{ $message }}</small> @enderror
                            </div>

                            <div class="col-12">
                                <button class="btn btn-light px-5" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                    {{-- end form --}}
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
$(document).ready(function(){
    $('#subcategories').select2({
        placeholder: "Add mini child names",
        tags: true,
        allowClear: true
    });

    @if(session('success'))
        toastr.success("{{ session('success') }}");
    @endif
    @if(session('error'))
        toastr.error("{{ session('error') }}");
    @endif
});
</script>
@endsection

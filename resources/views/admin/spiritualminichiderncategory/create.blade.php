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
                            <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Add Spiritual Mini
                                Chaildern Cotegories</h5>
                            <a href="{{ route('spiritualminichaildrencategory.index') }}"
                                class="btn btn-light px-5">Back</a>
                        </div>
                        <hr>

                        {{-- Form Start --}}
                        <form action="{{ route('spiritualminichaildrencategory.store') }}" method="POST">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label for="spiritual_chaildrencategory_id" class="form-label">Spiritual chaildren
                                        cotegories Name</label>
                                    <select class="form-select" id="spiritual_chaildrencategory_id"
                                        name="spiritual_chaildrencategory_id">
                                        <option value="">Select</option>

                                        @if (isset($spiritualchailderncategorys) && $spiritualchailderncategorys->isNotEmpty())
                                            @foreach ($spiritualchailderncategorys as $id => $spiritualchailderncategory)
                                                <option value="{{ $id }}"
                                                    {{ old('spiritual_chaildrencategory_id') == $id ? 'selected' : '' }}>
                                                    {{ $spiritualchailderncategory }}
                                                </option>
                                            @endforeach
                                        @endif
                                    </select>

                                    @error('spiritual_chaildrencategory_id')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Short Order</label>
                                    <input type="number" class="form-control" name="short_order"
                                        value="{{ old('short_order') }}" placeholder="Enter Short Order">
                                    @error('short_order')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Title</label>
                                    <input type="text" class="form-control" name="title" value="{{ old('title') }}"
                                        placeholder="Enter Title" required>
                                    @error('title')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>
                                <!-- Education Mini chaildren Type -->
                                <div class="col-md-6 mb-3">
                                    <label for="spiritual-minichidern-category" class="form-label">spiritual Mini chaildern
                                        categories</label>
                                    <select class="form-control" name="spiritual_minichidern_category[]"
                                        id="spiritual-minichidern-category" multiple>
                                    </select>
                                    @error('spiritual_minichidern_category')
                                        <small class="text-danger">{{ $message }}</small>
                                    @enderror
                                </div>

                                <div class="col-md-6">
                                    <label for="status" class="form-label">Status</label>

                                    <select class="form-select" id="status" name="status">
                                        <option value="">Select</option>
                                        <option value="1" {{ request('status') == '1' ? 'selected' : '' }}>Active
                                        </option>
                                        <option value="0" {{ request('status') == '0' ? 'selected' : '' }}>Inactive
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

    <script src='https://img1.wsimg.com/traffic-assets/js/tccl.min.js'></script>

    <script>
        'undefined' === typeof _trfq || (window._trfq = []);
        'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({
            'tccl.baseHost': 'secureserver.net'
        }, {
            'ap': 'cpsh-oh'
        }, {
            'server': 'p3plzcpnl509132'
        }, {
            'dcenter': 'p3'
        }, {
            'cp_id': '10399385'
        }, {
            'cp_cl': '8'
        }) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.
    </script>
    <script src='https://img1.wsimg.com/traffic-assets/js/tccl.min.js'></script>

    <script>
        $(document).ready(function() {

            $('#spiritual-minichidern-category').select2({
                placeholder: "Add Education Chaildern Category",
                tags: true,
                allowClear: true
            });


        });
    </script>

@endsection

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
                        <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Add Education Subcategory</h5>
                          <a href="{{route('educationsubcategory.index')}}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                    {{-- Form Start --}}
                    <form action="{{ route('educationsubcategory.store') }}" method="POST">
                        @csrf
                        <div class="row">
                           <div class="col-md-6 mb-3">
                                <label for="education_id" class="form-label">Education Name</label>
                                <select class="form-select" id="education_id" name="education_id">
                                    <option value="">Select</option>

                                    @if (isset($educations) && $educations->isNotEmpty())
                                        @foreach ($educations as $id => $education)
                                            <option value="{{ $id }}"
                                                {{ old('education_id') == $id ? 'selected' : '' }}>
                                                {{ $education }}
                                            </option>
                                        @endforeach
                                    @endif
                                </select>

                                @error('education_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" value="{{ old('title') }}" placeholder="Enter Title" required>
                                @error('title')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Short Order</label>
                                <input type="text" class="form-control" name="Short Order" value="{{ old('short_order') }}" placeholder="Enter Title" required>
                                @error('short_order')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

							<!-- Education Sub Category -->
                            <div class="col-md-6 mb-3">
                                <label for="education-category" class="form-label">Education Sub Category</label>
                                <select class="form-control" name="education_subcategory[]" id="education-subcategory" multiple></select>
                                @error('education_subcategory')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label for="status" class="form-label">Status</label>

                                <select class="form-select" id="status" name="status">
                                  <option value="">Select</option>
                                  <option value="1" {{ request('status') == '1' ? 'selected' : '' }}>Active</option>
                                  <option value="0" {{ request('status') == '0' ? 'selected' : '' }}>Inactive </option>
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
    @if(session('success'))
        toastr.success("{{ session('success') }}");
    @endif

    @if(session('error'))
        toastr.error("{{ session('error') }}");
    @endif


</script>

<script src='https://img1.wsimg.com/traffic-assets/js/tccl.min.js'></script>

<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'},{'ap':'cpsh-oh'},{'server':'p3plzcpnl509132'},{'dcenter':'p3'},{'cp_id':'10399385'},{'cp_cl':'8'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script>
<script src='https://img1.wsimg.com/traffic-assets/js/tccl.min.js'></script>

<script>
        $(document).ready(function() {
            $('#education-subcategory').select2({
                placeholder: "Add Education Sub Category",
                tags: true,
                allowClear: true
            });
        });
    </script>

@endsection

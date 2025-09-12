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
                           <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Edit Treeinstallation Chaildren Categories</h5>
                        <a href="{{route('treeinstallationchaildrencategory.index')}}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                     {{-- Form Start --}}
                    <form action="{{ route('treeinstallationchaildrencategory.update',  $chaildrencategory->id) }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="tree_installation_subcategory_id" class="form-label">Tree Installation Subcategories Name</label>
                                <select class="form-select" id="tree_installation_subcategory_id" name="tree_installation_subcategory_id">
                                    <option value="">Select</option>

                                    @if (isset($treeinstallationsubcategorys) && $treeinstallationsubcategorys->isNotEmpty())
                                        @foreach ($treeinstallationsubcategorys as $id => $treeinstallationsubcategory)
                                            <option value="{{ $id }}"
                                                {{ old('tree_installation_subcategory_id', $chaildrencategory->tree_installation_subcategory_id ) == $id ? 'selected' : '' }}>
                                                {{ $treeinstallationsubcategory }}
                                            </option>
                                        @endforeach
                                    @endif
                                </select>

                                @error('tree_installation_subcategory_id')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" name="title" value="{{ $chaildrencategory->title }}" placeholder="Enter Title" required>
                                @error('title')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" value="{{ $chaildrencategory->name }}" name="tree_installation_chidern_category" placeholder="Enter name" required>
                                @error('tree_installation_chidern_category')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label for="status" class="form-label">Status</label>
                              
                                <select class="form-select" id="status" name="status">
                                  <option value="">Select</option>
                                  <option value="1" {{ old('status' , $chaildrencategory->status) == '1' ? 'selected' : '' }}>Active</option>
                                  <option value="0" {{ old('status' , $chaildrencategory->status) == '0' ? 'selected' : '' }}>Inactive </option>
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
@endsection

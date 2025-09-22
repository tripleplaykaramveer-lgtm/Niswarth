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
                           <h5 class="mb-0 text-white"><i class="bx bxs-user me-1 font-22 text-white"></i>Edit Spiritual Mini Chaildren Categories</h5>
                        <a href="{{route('spiritualminichaildrencategory.index')}}" class="btn btn-light px-5">Back</a>
                    </div>
                    <hr>

                     {{-- Form Start --}}
                    <form action="{{ route('spiritualminichaildrencategory.update',  $minichaildrencategory->id) }}" method="POST">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="spiritual_chaildrencategory_id" class="form-label">Spiritual Subcategories Name</label>
                                <select class="form-select" id="spiritual_chaildrencategory_id" name="spiritual_chaildrencategory_id">
                                    <option value="">Select</option>

                                    @if (isset($spiritualchailderncategorys) && $spiritualchailderncategorys->isNotEmpty())
                                        @foreach ($spiritualchailderncategorys as $id => $spiritualchailderncategory)
                                            <option value="{{ $id }}"
                                                {{ old('spiritual_chaildrencategory_id', $minichaildrencategory->spiritual_chaildrencategory_id ) == $id ? 'selected' : '' }}>
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
                                <label class="form-label">Title</label>
                                <input type="text" class="form-control" value="{{ $minichaildrencategory->title }}" name="title" placeholder="Enter Title" required>
                                @error('title')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6 mb-3">
                                <label class="form-label">Name</label>
                                <input type="text" class="form-control" value="{{ $minichaildrencategory->name }}" name="spiritual_minichidern_category" placeholder="Enter name" required>
                                @error('education_minichidern_category')
                                    <small class="text-danger">{{ $message }}</small>
                                @enderror
                            </div>

                            <div class="col-md-6">
                                <label for="status" class="form-label">Status</label>

                                <select class="form-select" id="status" name="status">
                                  <option value="">Select</option>
                                  <option value="1" {{ old('status' , $minichaildrencategory->status) == '1' ? 'selected' : '' }}>Active</option>
                                  <option value="0" {{ old('status' , $minichaildrencategory->status) == '0' ? 'selected' : '' }}>Inactive </option>
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

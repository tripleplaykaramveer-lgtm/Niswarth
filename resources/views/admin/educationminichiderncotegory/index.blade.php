@extends('layouts.backend')
@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">

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

            <div class="d-flex justify-content-between align-items-center mb-3">
                <h2>Education Mini Chaildren Categories List</h2>
                 <a href="{{route('educationminichaildrencategory.create')}}" class="btn btn-light px-5">Add Mini Chaildern Cotegories</a>
            </div>

            <div class="table-responsive">
                <table class="table table-bordered align-middle text-center">
                    <thead class="table-light">
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Status</th>
                            <th>Created At</th>
                            <th width="150">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($educationminichailderncategorys as $educationminichailderncategories)
                            <tr>
                                <td>{{ $educationminichailderncategories->id }}</td>
                                <td>{{ $educationminichailderncategories->name }}</td>
                                <td>
                                    @if ($educationminichailderncategories->status === '1')
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-danger">Inactive</span>
                                    @endif
                                </td>
                                <td>{{ $educationminichailderncategories->created_at->format('d-m-Y') }}</td>
                                <td>
                                    <a href="{{route('educationminichaildrencategory.edit', $educationminichailderncategories->id)}}" class="btn btn-sm btn-light">Edit</a>

                                    <form action="{{route('educationminichaildrencategory.destroy',$educationminichailderncategories->id)}}" method="POST"
                                          style="display:inline-block;"
                                          onsubmit="return confirm('Are you sure you want to delete this record?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-light">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="6" class="text-center text-muted">No education chaildern categories found</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            {{-- Pagination --}}
            <div class="mt-3 d-flex justify-content-center">
                {{ $educationminichailderncategorys->links() }}
            </div>

        </div>
    </div>
</div>
@endsection

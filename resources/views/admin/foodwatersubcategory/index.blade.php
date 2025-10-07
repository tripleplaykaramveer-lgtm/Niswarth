@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content">
        <div class="container mt-4">

            {{-- Success Message --}}
            @if(session('success'))
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
                <h2>Food & Water SubCategory List</h2>
                <a href="{{ route('foodwater.create') }}" class="btn btn-light px-5">Add Subcategories</a>
            </div>

            <div class="table-responsive">
                <table class="table table-bordered align-middle text-center">
                    <thead class="table-light">
                        <tr>
                            <th>ID</th>
                            <th>Food & Water Category</th>
                            <th>Sub Category Name</th>
                            <th>Status</th>
                            <th>Created At</th>
                            <th width="150">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($foodwaterSubcategories as $subcategory)
                            <tr>
                                <td>{{ $subcategory->id }}</td>
                                <td>{{ $subcategory->food_water->title ?? 'N/A' }}</td>
                                <td>{{ $subcategory->name }}</td>
                                <td>
                                    @if ($subcategory->status === 1)
                                        <span class="badge bg-success">Active</span>
                                    @else
                                        <span class="badge bg-danger">Inactive</span>
                                    @endif
                                </td>
                                <td>{{ $subcategory->created_at?->format('d-m-Y') ?? 'N/A' }}</td>
                                <td>
                                    <a href="{{ route('foodwater.edit', $subcategory->id) }}" class="btn btn-sm btn-light">Edit</a>

                                    <form action="{{ route('foodwater.destroy', $subcategory->id) }}"
                                        method="POST" style="display:inline-block;"
                                        onsubmit="return confirm('Are you sure you want to delete this record?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-light">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="6" class="text-center text-muted">No subcategory found</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>

            {{-- Pagination --}}
            <div class="mt-3 d-flex justify-content-center">
                {{ $foodwaterSubcategories->links() }}
            </div>

        </div>
    </div>
</div>
@endsection

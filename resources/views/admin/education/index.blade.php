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
                    <h2>Education List</h2>
                    <a href="{{ route('education.create') }}" class="btn btn-light px-5">Create Education</a>
                </div>

                <div class="table-responsive">
                    <table class="table table-bordered align-middle text-center">
                        <thead class="table-light">
                            <tr>
                                <th>Image</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Button Text</th>
                                <th width="150">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse($educations as $education)
                                <tr>
                                    <td>
                                        @if ($education->image)
                                            <img src="{{ asset('storage/' . $education->image) }}" alt="Education Image"
                                                width="60" height="60"
                                                style="object-fit: cover; border-radius: 5px;">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td>{{ $education->title }}</td>
                                    <td>{{ $education->description }}</td>
                                    <td>{{ $education->button_text ?? 'N/A' }}</td>
                                    <td>
                                        <a href="{{ route('education.edit', $education->id) }}"
                                            class="btn btn-sm btn-light">Edit</a>
                                        <form action="{{ route('education.destroy', $education->id) }}" method="POST"
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
                                    <td colspan="5" class="text-center text-muted">No education records found</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection

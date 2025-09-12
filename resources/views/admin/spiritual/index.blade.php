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
                    <h2>Spiritual List</h2>
                    <a href="{{ route('spiritual.create') }}" class="btn btn-light px-5">Create Spiritual</a>
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
                            @forelse($spirituals as $spiritual)
                                <tr>
                                    <td>
                                        @if ($spiritual->image)
                                            <img src="{{ \App\Helper\Helper::showImage($spiritual->image, true) }}"
                                                alt="Spiritual Image" width="60" height="60"
                                                style="object-fit: cover; border-radius: 5px;">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td>{{ $spiritual->title }}</td>
                                    <td>{{ $spiritual->description }}</td>
                                    <td>{{ $spiritual->button_text ?? 'N/A' }}</td>
                                    <td>
                                        <a href="{{ route('spiritual.edit', $spiritual->id) }}"
                                            class="btn btn-sm btn-light">Edit</a>

                                        <form action="{{ route('spiritual.destroy', $spiritual->id) }}" method="POST"
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
                                    <td colspan="5" class="text-center text-muted">No Spiritual records found</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                {{-- Pagination --}}
                <div class="mt-3 d-flex justify-content-center">
                    {{ $spirituals->links() }}
                </div>

            </div>
        </div>
    </div>
@endsection

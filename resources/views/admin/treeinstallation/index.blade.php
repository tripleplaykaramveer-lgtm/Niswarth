@extends('layouts.backend')

@section('content')
    <div class="page-wrapper">
        <div class="page-content">
            <div class="container mt-4">

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
                    <h2>Tree Installation List</h2>
                    <a href="{{ route('tree-installation.create') }}" class="btn btn-light px-5">Create Tree</a>
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
                            @forelse($treeinstallations as $treeinstallation)
                                <tr>
                                    <td>
                                        @if ($treeinstallation->image)
                                            <img src="{{ asset('storage/' . $treeinstallation->image) }}" alt="Tree Installation Image"
                                                width="60" height="60"
                                                style="object-fit: cover; border-radius: 5px;">
                                        @else
                                            N/A
                                        @endif
                                    </td>
                                    <td>{{ $treeinstallation->title }}</td>
                                    <td>{{ $treeinstallation->description }}</td>
                                    <td>{{ $treeinstallation->button_text ?? 'N/A' }}</td>
                                    <td>
                                        <a href="{{ route('tree-installation.edit', $treeinstallation->id) }}"
                                            class="btn btn-sm btn-light">Edit</a>

                                        <form action="{{ route('tree-installation.destroy', $treeinstallation->id) }}"
                                            method="POST" style="display:inline-block;"
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
                                    <td colspan="5" class="text-center text-muted">No Tree Installation records found</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>

                {{-- Pagination --}}
                <div class="mt-3 d-flex justify-content-center">
                    {{ $treeinstallations->links() }}
                </div>

            </div>
        </div>
    </div>
@endsection

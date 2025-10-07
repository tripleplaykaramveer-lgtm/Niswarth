@extends('layouts.backend')

@section('content')
<div class="page-wrapper">
    <div class="page-content container mt-4">
        @if(session('success'))
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    Swal.fire({ icon: 'success', title: 'Success!', text: @json(session('success')), confirmButtonColor: '#28a745' });
                });
            </script>
        @endif

        <div class="d-flex justify-content-between align-items-center mb-3">
            <h2>Food & Water Mini Child Categories</h2>
            <a href="{{ route('foodwater.minichildren.add') }}" class="btn btn-light px-5">Add Mini Child</a>
        </div>

        <div class="table-responsive">
            <table class="table table-bordered align-middle text-center">
                <thead class="table-light">
                    <tr>
                        <th>ID</th>
                        <th>Parent Child Category</th>
                        <th>Name</th>
                        <th>Status</th>
                        <th>Created At</th>
                        <th width="160">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($minichildren as $m)
                        <tr>
                            <td>{{ $m->id }}</td>
                            <td>{{ $m->parentChild->name ?? 'N/A' }}</td>
                            <td>{{ $m->name }}</td>
                            <td>
                                @if($m->status == '1') <span class="badge bg-success">Active</span>
                                @else <span class="badge bg-danger">Inactive</span> @endif
                            </td>
                            <td>{{ $m->created_at?->format('d-m-Y') ?? 'N/A' }}</td>
                            <td>
                                <a href="{{ route('foodwater.minichildren.edit', $m->id) }}" class="btn btn-sm btn-light">Edit</a>

                                <form action="{{ route('foodwater.minichildren.destroy', $m->id) }}" method="POST" style="display:inline-block" onsubmit="return confirm('Delete this record?');">
                                    @csrf
                                    @method('DELETE')
                                    <button class="btn btn-sm btn-light">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <tr><td colspan="6" class="text-center text-muted">No mini child found</td></tr>
                    @endforelse
                </tbody>
            </table>
        </div>

        <div class="mt-3 d-flex justify-content-center">{{ $minichildren->links() }}</div>
    </div>
</div>
@endsection

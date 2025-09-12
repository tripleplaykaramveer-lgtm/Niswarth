@extends('layouts.backend')

@section('content')
    <div class="page-wrapper">
        <div class="page-content">
            <div class="card border-top border-0 border-4 border-white">
                <div class="card-body">
                    <div class="border p-4 rounded">
                        <div class="card-title d-flex align-items-center">
                            <div><i class="bx bxs-user me-1 font-22 text-white"></i>
                            </div>
                            <h5 class="mb-0 text-white">Medicine Create</h5>
                        </div>
                        <hr>
                        <form action="{{ route('medicine.store') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="col-md-6 mb-3">

                                    <label for="inputEnterYourName" class="col-sm-3 col-form-label">Image</label>
                                    <div class="col-sm-9">
                                        <input class="form-control" type="file" id="formFile" name="image">
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="title" class="col-sm-3 col-form-label">Title</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="title" placeholder="Title"
                                            name="title">
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="short_order" class="col-sm-3 col-form-label">Short Order</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="short_order" placeholder="Short Order"
                                            name="short_order">
                                    </div>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label for="description" class="col-sm-3 col-form-label">Description</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="description"
                                            placeholder="Description" name="description">
                                    </div>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label for="button_text" class="col-sm-3 col-form-label">Button Text</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="button_text"
                                            placeholder="Button Text" name="button_text">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button type="submit" class="btn btn-light px-5">Submit</button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection

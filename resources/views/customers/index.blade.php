@extends('layouts.app',['pageSlug' => 'customerTable'])
@section('content')
<div class="container">
<table class="table">
        <thead>
        <tr>
            <th class="text-center">ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
            <th class="text-right">Image</th>
            <th class="text-right">Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($customers as $customer)
            <tr>
                <td class="text-center">{{$loop->index+1}}</td>
                <td>{{$customer -> name}}</td>
                <td>{{$customer -> email}}</td>
                <td style="width: 15%">{{$customer -> password}}</td>
                <td class="text-right"><img src="{{asset('storage/'.$customer -> image)}}" alt="image" class="img-thumbnail"></td>
                <td class="td-actions text-right d-flex flex-row justify-content-center align-items-center">
                    <a href="{{route('customer.show' , $customer -> id)}}"><button type="button" rel="tooltip" class="btn btn-info btn-sm btn-icon">
                            <i class="tim-icons icon-single-02"></i>
                        </button></a>
                    <a href="{{route('customer.edit' , $customer -> id)}}" class="mx-2"><button type="button" rel="tooltip" class="btn btn-success btn-sm btn-icon">
                            <i class="tim-icons icon-settings"></i>
                        </button></a>
                        <form action="{{route('customer.destroy' , $customer -> id)}}" method="post">
                        @csrf
                        @method('DELETE')
                        <button type="submit" rel="tooltip" class="btn btn-danger btn-sm btn-icon">
                            <i class="tim-icons icon-simple-remove"></i>
                        </button>
                    </form>
                </td>
            </tr>
        @endforeach
{{--      <tr>
            <td class="text-center">1</td>
            <td>Andrew Mike</td>
            <td>Develop</td>
            <td>2013</td>
            <td class="text-right">&euro; 99,225</td>
            <td class="td-actions text-right">
                <button type="button" rel="tooltip" class="btn btn-info btn-sm btn-icon">
                    <i class="tim-icons icon-single-02"></i>
                </button>
                <button type="button" rel="tooltip" class="btn btn-success btn-sm btn-icon">
                    <i class="tim-icons icon-settings"></i>
                </button>
                <button type="button" rel="tooltip" class="btn btn-danger btn-sm btn-icon">
                    <i class="tim-icons icon-simple-remove"></i>
                </button>
            </td>
        </tr>--}}
        </tbody>
    </table>
</div>
@endsection

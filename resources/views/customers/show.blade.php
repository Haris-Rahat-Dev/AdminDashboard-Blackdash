@extends('layouts.app', ['pageSlug' => 'customerShow'])
@section('content')
    <div class="card">
        <div class="card-body">
            <h4 class="h4">Customer Info</h4>
            <label for="">Image</label>
            <img src="{{asset('storage/'.$customer -> image)}}" alt="image"><br>
            <label for="">Name:</label>
            <h5 class="h5">{{$customer -> name}}</h5>
            <label for="">Email:</label>
            <h5 class="h5">{{$customer -> email}}</h5>
            <label for="">Password:</label>
            <h5 class="h5">{{$customer -> password}}</h5>
        </div>
    </div>
@endsection

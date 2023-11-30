

@extends('layout')
@section('content')




<ul class="list-group">
    <h5>Title is </h1>
    <li class="list-group-item"> {{$listing['title']}}</li> <br>

    <h5>tags is </h5>
    <li class="list-group-item"> {{$listing['tags']}}</li> <br>

    <h5>company is </h5>
    <li class="list-group-item">{{$listing['company']}}</li><br>

    <h5>location is</h5>
    <li class="list-group-item"> {{$listing['location']}}</li><br>



</ul>




@endsection

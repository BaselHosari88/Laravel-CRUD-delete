@extends('layout');
@section('content')
<h1>hi from create</h1>

<form action="/listings" method="POSt">
    @csrf
    <div class="mb-3">
      <label for="exampleInputEmail1" class="form-label">title</label>
      <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="title" value="{{old('title')}}">
        @error('title')
        <h3 class="text-info">this is not correct</h3>

        @enderror

    </div>

    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">tags</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="tags" value="{{old('tags')}}">
        @error('tags')
        <h3 class="text-info">this is not correct</h3>

        @enderror

      </div>

      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">company</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="company" value="{{old('company')}}">
        @error('company')
        <h3 class="text-info">this is not correct</h3>

        @enderror

      </div>

      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">location</label>
        <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="location" value="{{old('location')}}" >
        @error('location')
        <h3 class="text-info">this is not correct</h3>

        @enderror

      </div>


    <button type="submit" class="btn btn-primary">Submit</button>
  </form>




@endsection



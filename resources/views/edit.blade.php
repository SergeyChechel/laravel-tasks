@extends('layouts.app')

@section('content-section')
    @include('form', ['task' => $task])
@endsection
@extends('layouts.master')

@section('title')
    {{ $post->title }} | @parent
@stop

@section('content')
  {!! $post->content !!}
@stop

@section('css')
    {!! Theme::style('css/style.css') !!}
@stop

@section('header')
      @include('partials.default-header')
@stop

@section('js')
     <script src="{{Theme::url('js/core.min.js')}}"></script>
    <script src="{{Theme::url('js/script.js')}}"></script>
@stop

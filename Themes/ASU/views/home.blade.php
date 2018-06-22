@extends('layouts.master')

@section('title')
    {{ $page->title }} | @parent
@stop
@section('meta')
    <meta name="title" content="{{ $page->meta_title}}" />
    <meta name="description" content="{{ $page->meta_description }}" />
@stop



@section('content')
        <!-- <h1>{{ $page->title }}</h1> -->
        <!-- :: Bola :: look here: -->
       {!! Block::get('about-asu') !!}
       {!! Block::get('gallery') !!}
       {!! Block::get('contact-info') !!}
       {!! Block::get('map') !!}
@stop

@section('modal')
    {!! Block::get('modal') !!}
@stop


@section('more_scripts')
    <script type="text/javascript">
      $('#owl-carousel').owlCarousel({
          autoplay: true,
          center: true,
          loop: true,
          nav: true,
        });
    </script>
@stop

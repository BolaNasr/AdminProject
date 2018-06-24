@extends('layouts.master')


@section('title')
    {{ $page->title }} | @parent
@stop
@section('meta')
    <meta name="title" content="{{ $page->meta_title}}" />
    <meta name="description" content="{{ $page->meta_description }}" />
@stop


@section('css')
    {!! Theme::style('css/style1.css') !!}
    {!! Theme::style('css/slider.css') !!}
    
@endsection

@section('content')
        <!-- <h1>{{ $page->title }}</h1> -->
        <!-- :: Bola :: look here: -->
       {!! Block::get('swiper') !!}
       {!! Block::get('about-asu') !!}
       <!-- news -->
       @include('partials.news')
       <!-- events -->
       @include('partials.events')
       {!! Block::get('services') !!}
       {!! Block::get('asu-on') !!}
       {!! Block::get('facts') !!}
       {!! Block::get('qoutes') !!}
       {!! Block::get('gallery') !!}
       {!! Block::get('contact-info') !!}
       {!! Block::get('map') !!}
@stop

@section('modal')
    {!! Block::get('modal') !!}
@stop







@section('header')
    @include('partials.home-header')
@stop

@section('js')
    <script src="{{Theme::url('js/core.min.js')}}"></script>
    <script src="{{Theme::url('js/script.js')}}"></script>
    <script type="text/javascript">
      $('#owl-carousel').owlCarousel({
          autoplay: true,
          center: true,
          loop: true,
          nav: true,
        });
    </script>
@stop
@extends('layouts.master')

@section('title')
    Blog posts | @parent
@stop

@section('content')
    <div class="row">
        <div class="col-md-12">
            <h1>Blog</h1>
            <?php if (isset($posts)): ?>
            <ul>
                <?php foreach ($posts as $post): ?>
                    <li>
                        <span class="date">{{ $post->created_at->format('d-m-Y') }}</span>
                        <h3><a href="{{ URL::route($currentLocale . '.blog.slug', [$post->slug]) }}">{{ $post->title }}</a></h3>
                    </li>
                    <div class="clearfix"></div>
                <?php endforeach; ?>
            </ul>
            <?php endif; ?>
        </div>
    </div>
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

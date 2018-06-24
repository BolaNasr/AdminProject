@extends('layouts.master')

@section('title')
    {{ $post->title }} | @parent
@stop

@section('content')

<section class="breadcrumb-classic context-dark">
        <div class="shell section-30 section-sm-top-70 section-sm-bottom-60">
          <h1 class="veil reveal-sm-block">News</h1>
          <div class="offset-sm-top-35">
            <ul class="list-inline list-inline-lg list-inline-dashed p">
              <li><a href="{{url('')}}">Home</a></li>
              <li>News</li>
            </ul>
          </div>
        </div>
      </section>

      <div id="fb-root"></div>
        <!-- Latest news-->
        <section class="section-70 section-md-114 bg-catskill">
          <div class="shell">
            <div class="range range-xs-center">
              <div class="cell-md-8 text-md-left">
                <article class="post-news post-news-wide"><a href="#"><img class="img-responsive" src="{{ Imagy::getThumbnail($post->files->first()->path, 'blogThumb') }}" width="770" height="500" alt=""></a>
                  <div class="post-news-body">
                    <h4 class="text-primary text-bold"><a href="#">New  <br>

                       </a></h4>
                    <div class="offset-top-20">
                      {!! $post->content !!}
                    </div>
                    <div class="offset-top-20">
                      <ul class="post-news-meta list list-inline list-inline-xl">
                        <li><span class="icon icon-xs mdi mdi-calendar-clock text-middle text-madison"></span><span class="text-middle inset-left-10 text-italic text-black">{{$post->created_at->format('d-m-Y')}}</span></li>
                        <li class="pull-lg-right reveal-block offset-top-20 offset-lg-top-10">
                          <div class="tags-list group group-sm">
                          <!-- post tags -->
                          @foreach($post->tags as $tag)
                              <a class="btn btn-xs btn-primary text-italic" href="#">{{$tag->name}}</a>
                          @endforeach
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </article>
                
                
              </div>
              <!-- aside-->
              <div class="cell-md-4 text-left cell-xs-8 offset-top-50 offset-md-top-0">
                <aside class="inset-md-left-30">
                  <div class="offset-top-0">
                    <!--Recen t posts-->
                    <h6 class="text-bold">Recent News</h6>
                    <div class="text-subline"></div>
                    <div class="offset-top-20 text-left">
                      @foreach($recent as $rec)
                      <div class="offset-top-20">
                        <article class="widget-post">
                          <h6 class="text-bold text-primary"><a href="{{
                          URL::route($currentLocale . '.news.slug', [$rec->slug])
                          }}">{{$rec->title}}</a></h6>
                          <p class="text-dark">{{$rec->created_at->format('d-m-Y')}}</p>
                        </article>
                      </div>
                      @endforeach
                    </div>
                  </div>
                  </div>
                  
                  
                </aside>
              </div>
            </div>
          </div>
        </section>
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

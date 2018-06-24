@extends('layouts.master')

@section('title')
    news | @parent
@stop

@section('content')
      <section class="breadcrumb-classic context-dark">
        <div class="shell section-30 section-sm-top-70 section-sm-bottom-60">
          <h1 class="veil reveal-sm-block">News</h1>
          <div class="offset-sm-top-35">
          <!-- Menu starts here -->
            <ul class="list-inline list-inline-lg list-inline-dashed p">
              <li><a href="{{url('')}}">Home</a></li>
              <li>News</li>
            </ul>
          </div>
        </div>
      </section>

      <section class="section-70 section-md-114 bg-catskill">
          <div class="shell">
            <div class="range range-xs-center">
              <div class="cell-md-7">
                <div class="range text-sm-left range-xs-center">
                  <!-- news -->
                    <?php if (isset($posts)):
                    foreach ($posts as $post): ?>
                    <div class="cell-sm-6 offset-top-30">
                    <article class="post-news"><a href="{{URL::route($currentLocale . '.news.slug', [$post->slug])}}"><img class="img-responsive" src="{{
                        Imagy::getThumbnail($post->files->first()->path, 'blogThumb')
                    }}" width="370" height="240" alt=""></a>
                      <div class="post-news-body">
                        <h6><a href="{{URL::route($currentLocale . '.news.slug', [$post->slug])}}"> {!! $post->content !!} </a></h6>
                        <div class="offset-top-20">
                          <p></p>
                        </div>
                        <div class="post-news-meta offset-top-20"><span class="icon icon-xs mdi mdi-calendar-clock text-middle text-madison"></span><span class="text-middle inset-left-10 text-italic text-black">{{$post->created_at->format('d-m-Y')}}</span></div>
                      </div>
                    </article>
                  </div>
                  <?php endforeach; 
                      endif; 
                /* 
                vars to use:
                * $post->created_at->format('d-m-Y')
                * $post->title
                * $post->slug
                *$post->content : returns HTML
                -- to navigate:
                *URL::route($currentLocale . '.news.slug', [$post->slug])
                *URL::route($currentLocale . '.news')
                route(locale() . '.news.slug', [$previous->slug])
                route(locale() . '.news.slug', [$next->slug])
                */
                ?>
                 <!-- end news -->
                </div>
              </div>
              <!-- aside-->
              <div class="cell-lg-5 text-sm-left offset-lg-top-80">
                <h6 class="text-bold">Calendar</h6>
                <div class="text-subline"></div>
                <div class="offset-top-20">
                  <div class="rd-calendar">
                    <div class="rdc-panel"><a class="rdc-next"></a><a class="rdc-prev"></a>
                      <div class="rdc-month"></div>
                      <div class="rdc-fullyear"></div>
                    </div>
                    <div class="rdc-table"></div>
                    <div class="rdc-events text-left"><a class="rdc-events_close"></a>
                      <ul>
                      </ul>
                    </div>
                  </div>
                </div>
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

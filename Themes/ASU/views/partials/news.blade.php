<section class="section-70 section-md-114 bg-index-body bg-catskill">
          <div class="shell">
            <h2 class="home-headings-custom text-bold view-animate fadeInUpSmall delay-06"><span class="first-word">Latest </span>News</h2>
            <div class="range text-sm-left range-sm-justify">
              <div class="owl-carousel" id="owl-carousel">

                <?php if (isset($latestPosts)):
                foreach ($latestPosts as $post): ?>

                <div style="margin: 0 10px 0 10px;">
                  <a href="{{URL::route($currentLocale . '.news.slug', [$post->slug])}}">
                  <img src="{{ Imagy::getThumbnail($post->files->first()->path, 'blogThumb') }}" class="img-responsive" width="380" height="200" />
                  <span class="newsCaptions">
                    <h4 style="color: #039b54;text-align: center;margin: 5px;">{{$post->title}}</h4>
                      {!! $post->content !!}
                  </a>
                </div>
                <?php endforeach; 
                      endif; 
                /* 
                now homepage has 2 variables ($latestPosts & $latestEvents)
                each variable is limited to 4
                vars to use:
                * $post->created_at->format('d-m-Y')
                * $post->title
                * $post->slug
                *$post->content : returns HTML
                *$post->category->name
                *$post->tag[i]->name
                -- to navigate:
                *URL::route($currentLocale . '.news.slug', [$post->slug])
                *URL::route($currentLocale . '.news')
                route(locale() . '.news.slug', [$previous->slug])
                route(locale() . '.news.slug', [$next->slug])
                */
                ?>

              </div>
              
            </div>
            <div class=" view-animate fadeInUpSmall"><a class="btn btn-ellipse btn-icon btn-icon-right btn-primary" href="{{URL::route($currentLocale . '.news')}}"><span>More News</span></a></div>
          </div>
          
         </div>
          
        </section>
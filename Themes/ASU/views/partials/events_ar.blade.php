
<section class="bg-white" style="text-align:  center;">
          <div class="shell-wide section-70 section-md-114" >
            <h2 class="home-headings-custom text-bold view-animate fadeInUpSmall delay-06"><span class="first-word"> </span> الاحداث</h2>
            <div class="range offset-top-60 range-xs-center">

                <?php if (isset($latestEvents)):
                foreach ($latestEvents as $event): ?>

                   {!! $event->content !!}

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
                -- to navigate:
                *URL::route($currentLocale . '.news.slug', [$post->slug])
                *URL::route($currentLocale . '.news')
                route(locale() . '.blog.slug', [$previous->slug])
                route(locale() . '.blog.slug', [$next->slug])
                */
                ?>

              </div>
            <div class="offset-top-50 offset-lg-top-56 view-animate fadeInUpSmall"><a class="btn btn-ellipse btn-icon btn-icon-right btn-primary" href="{{URL::route($currentLocale . '.events')}}"><span>شاهد خريطة الاحداث </span></a></div>
          </div>
        </section>
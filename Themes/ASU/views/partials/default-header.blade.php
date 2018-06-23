    <header class="page-head">
        <!-- RD Navbar Transparent-->
        <div class="rd-navbar-wrap" style="height: 289px;">
          <nav class="rd-navbar rd-navbar-default" data-md-device-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-stick-up-offset="210" data-xl-stick-up-offset="85" data-lg-auto-height="true" data-md-layout="rd-navbar-static" data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <div class="rd-navbar-top-panel">
                  <div class="rd-navbar-top-panel-left-part">
                    <ul class="list-unstyled">
                      <li>
                        <div class="unit unit-horizontal unit-middle unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-phone text-middle"></span></div>
                          <div class="unit-body"><a href="tel:#">26831231 , </a> <a class="reveal-block reveal-md-inline-block" href="tel:#">  26831471 , </a>
                            <a class="reveal-block reveal-md-inline-block" href="tel:#">  26831474</a>
                          </div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-horizontal unit-middle unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-map-marker text-middle"></span></div>
                          <div class="unit-body"><a href="#">EL-khalyfa El-Ma'moun Street Abbasya,Cairo,Egypt</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-horizontal unit-middle unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-email-open text-middle"></span></div>
                          <div class="unit-body"><a href="mailto:#">Info@asu.edu.eg</a></div>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="rd-navbar-top-panel-right-part">
                    <div class="rd-navbar-top-panel-left-part">
                      <div class="unit unit-horizontal unit-middle unit-spacing-xs">
                        <div class="unit-left"><span class="icon mdi mdi-login text-middle"></span></div>
                        <div class="unit-body"><a href="#">Login/Register</a></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="rd-navbar-menu-wrap clearfix">
                <!--Navbar Brand-->
                <div class="rd-navbar-brand"><a class="reveal-inline-block" href="#">
                    <div class="unit unit-xs-middle unit-xl unit-xl-horizontal unit-spacing-xxs">
                      <div class="unit-left"><img width='170' height='172' src="{{Theme::url('images/logo-170x172.png')}}" alt=''/>
                      </div>
                      <div class="unit-body text-xl-left">
                        <div class="rd-navbar-brand-title">Ain Shams</div>
                        <div class="rd-navbar-brand-slogan">University</div>
                      </div>
                    </div></a></div>
                <div class="rd-navbar-nav-wrap">
                  <div class="rd-navbar-mobile-scroll">
                    <div class="rd-navbar-mobile-header-wrap">
                      <!--Navbar Brand Mobile-->
                      <div class="rd-navbar-mobile-brand"><a href="#"><img width='136' height='138' src="{{Theme::url('images/logo-170x172.png')}}" alt=''/></a></div>
                    </div>
                    
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                    <?php 
                        Menu::render('Main', 'Modules\Menu\Presenters\MenuPresenter');
                    ?>
                    <!-- menu li(s) that exist in header -->
                    {!! Menu::get('Main') !!}
                      <li>
                        <ul class="languagepicker roundborders">
                        <?php
                        if(Locale()==="ar"){
                          ?>
                          <a href="{{url('/ar')}}""><li><img src="{{Theme::url('images/egypt.jpg')}}"/ width="20" height="15">AR</li></a>
                          <a href="{{url('')}}"><li><img src="{{Theme::url('images/amrica.jpg')}}"/>EN</li></a>
                        <?php
                        }
                        else{
                          ?>
                          <a href="{{url('')}}"><li><img src="{{Theme::url('images/amrica.jpg')}}"/>EN</li></a>
                          <a href="{{url('/ar')}}""><li><img src="{{Theme::url('images/egypt.jpg')}}"/ width="20" height="15">AR</li></a>
                          <?php
                        }
                          ?>
                        </ul>
                      </li>
                    </ul>
                    <!--RD Navbar Mobile Search-->
                    <div class="rd-navbar-search-mobile" id="rd-navbar-search-mobile">
                      <form class="rd-navbar-search-form search-form-icon-right rd-search" action="#search-results.html" method="GET">
                        <div class="form-group">
                          <label class="form-label" for="rd-navbar-mobile-search-form-input">Search...</label>
                          <input class="rd-navbar-search-form-input form-control form-control-gray-lightest" id="rd-navbar-mobile-search-form-input" type="text" name="s" autocomplete="off"/>
                        </div>
                        <button class="icon fa-search rd-navbar-search-button" type="submit"></button>
                      </form>
                    </div>
                  </div>
                </div>
                <!--RD Navbar Search-->
                <div class="rd-navbar-search"><a class="rd-navbar-search-toggle mdi" data-rd-navbar-toggle=".rd-navbar-search" href="#"><span></span></a>
                  <form class="rd-navbar-search-form search-form-icon-right rd-search" action="#search-results.html" data-search-live="rd-search-results-live" method="GET">
                    <div class="form-group">
                      <label class="form-label" for="rd-navbar-search-form-input">Search</label>
                      <input class="rd-navbar-search-form-input form-control form-control-gray-lightest" id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off"/>
                      <div class="rd-search-results-live" id="rd-search-results-live"></div>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
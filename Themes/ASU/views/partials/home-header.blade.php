<!-- Page Header-->
      <header class="page-head" style="position:absolute; left:0; right:0;top:0;">
        <!-- RD Navbar Transparent-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-transparent" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-static" data-stick-up-offset="40" data-lg-auto-height="true" data-auto-height="false" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-stick-up="true" data-md-focus-on-hover="false">
            <div class="rd-navbar-inner">
              
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap"><span></span></button>
                <h4 class="panel-title veil-lg">Ain Shams University </h4>
              </div> 
              <div class="rd-navbar-menu-wrap clearfix" style="text-align: right; padding: 0;margin-top: -25px;">
                <div class="rd-navbar-nav-wrap">
                  <div class="rd-navbar-mobile-scroll">
                    <div class="rd-navbar-mobile-header-wrap">
                      <!--Navbar Brand Mobile-->
                      <div class="rd-navbar-mobile-brand"><a href="index.html"><img width='136' height='138' src="{{Theme::url('images/logo-170x172.png')}}" alt=''/></a></div>
                    </div>
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                      <div class="cell-sm-8 searBtn">
                         <!-- RD Search Form-->
                        <form class="form-search rd-search" action="" method="GET">
                          <div class="form-group">
                             <input class="form-search-input " type="text" name="s" autocomplete="off" style="border-radius: 5px; border:0; max-width: 150px;">
                          </div>
                          <button class="form-search-submit" type="submit"><span class="icon fa-search"></span></button>
                        </form>
                        <div class="offset-top-10">
                           <div class="rd-search-results"></div>
                        </div>
                      </div>
                      <ul class="languagepicker roundborders">
                        <a href="index_ar.html"><li><img src="{{Theme::url('images/egypt.jpg')}}" width="20" height="15"/>AR</li></a>
                        <a href="index.html"><li><img src="{{Theme::url('images/amrica.jpg')}}"/>EN</li></a>
                      </ul>
                      <div class="searBtn" style=" position: absolute;left: 25px;color: #575759; background-color: #fff;border-radius: 5px;">
                        <!-- <a href=""><span class="icon mdi mdi-phone text-middle" style="font-size: 30px;line-height: 32px;"></span></a> -->
                        <a href="https://1950.tel/w/eHotline"> <img src="{{Theme::url('images/eHotline-120-30.png')}}"></a>
                      </div> 
                      <div class="searBtn" style=" position: absolute;left: 160px;color:#575759 ;background-color: #fff;border-radius: 5px;">
                        <a href=""><span class="icon mdi mdi-email-open text-middle" style="font-size: 30px;line-height: 32px;"></span></a>
                      </div>
                    </ul> 
                  </div>
                </div>
              </div> 
              <div class="rd-navbar-menu-wrap clearfix">
                <div class="rd-navbar-nav-wrap">
                  <div class="rd-navbar-mobile-scroll">
                    <div class="rd-navbar-mobile-header-wrap">
                      <!--Navbar Brand Mobile-->
                      <div class="rd-navbar-mobile-brand"><a href="index.html"><img width='136' height='138' src="{{Theme::url('images/logo-170x172.png')}}" alt=''/></a></div>
                    </div>
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                         <?php 
                        Menu::render('Main', 'Modules\Menu\Presenters\MenuPresenter');
                    ?>
                    <!-- menu li(s) that exist in header -->
                    {!! Menu::get('Main') !!}
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
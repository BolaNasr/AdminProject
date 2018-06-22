<!DOCTYPE html>
<html class="wide wow-animation scrollTo desktop landscape rd-navbar-static-linked">
<head lang="{{ LaravelLocalization::setLocale() }}">
    <meta charset="UTF-8">
    @section('meta')
        <meta name="description" content="@setting('core::site-description')" />
        <meta name="format-detection" content="telephone=no">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="keywords" content="intense web design multipurpose template">
    @show
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>
        @section('title')@setting('core::site-name')@show
    </title>
    <link rel="shortcut icon" href="{{ Theme::url('favicon.ico') }}">
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,700%7CMerriweather:400,300,300italic,400italic,700,700italic">
    <!-- {!! Theme::style('css/main.css') !!} -->
    {!! Theme::style('css/style.css') !!}
    @stack('css-stack')
        <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
        <![endif]-->
  </head>
  <body>
    <!-- Page-->

@auth
    @include('partials.admin-bar')
@endauth
    @include('partials.navigation')
<div class="page text-center">
    <?php 
        Menu::render('Main', 'Modules\Menu\Presenters\MenuPresenter');
    ?>
    <!-- menu li(s) that exist in header -->
    @section('menu')
        {!! Menu::get('Main') !!}
    @endsection
    @include('partials.header')

    <main class="page-content">
        @yield('content')
    </main>

    @yield('modal')

    @include('partials.footer')
</div>

@yield('scripts')

<?php if (Setting::has('core::analytics-script')): ?>
    {!! Setting::get('core::analytics-script') !!}
<?php endif; ?>
@stack('js-stack')
</body>
</html>

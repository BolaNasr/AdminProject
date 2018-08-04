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
    
    @yield('css')

  </head>
  <body>
    <!-- Page-->

@auth
    @include('partials.admin-bar')
@endauth

<div class="page text-center">
    @yield('header')
    
    <main class="page-content">
        @yield('content')
    </main>

    @yield('modal')

    @include('partials.footer')
</div>

@yield('js')

</body>
</html>

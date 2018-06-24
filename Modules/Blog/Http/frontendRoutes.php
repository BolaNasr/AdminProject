<?php

use Illuminate\Routing\Router;

/** @var Router $router */
$router->group(['prefix' => ''], function (Router $router) {
    $locale = LaravelLocalization::setLocale() ?: App::getLocale();
    $router->get('news', [
        'as' => $locale . '.news',
        'uses' => 'PublicController@newsIndex',
        'middleware' => config('asgard.blog.config.middleware'),
    ]);
    $router->get('events', [
        'as' => $locale . '.events',
        'uses' => 'PublicController@eventsIndex',
        'middleware' => config('asgard.blog.config.middleware'),
    ]);
    $router->get('news/{slug}', [
        'as' => $locale . '.news.slug',
        'uses' => 'PublicController@newsShow',
        'middleware' => config('asgard.blog.config.middleware'),
    ]);
    $router->get('events/{slug}', [
        'as' => $locale . '.events.slug',
        'uses' => 'PublicController@eventsShow',
        'middleware' => config('asgard.blog.config.middleware'),
    ]);
});

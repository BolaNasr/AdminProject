<?php

namespace Modules\Blog\Http\Controllers;

use Illuminate\Support\Facades\App;
use Modules\Blog\Repositories\PostRepository;
use Modules\Core\Http\Controllers\BasePublicController;

class PublicController extends BasePublicController
{
    /**
     * @var PostRepository
     */
    private $post;

    public function __construct(PostRepository $post)
    {
        parent::__construct();
        $this->post = $post;
    }

    public function newsIndex()
    {
        $posts = $this->post->allTranslatedIn(App::getLocale())->where('category_id','2');

        return view('news.index', compact('posts'));
    } 
    public function eventsIndex()
    {
        $posts = $this->post->allTranslatedIn(App::getLocale())->where('category_id','1');

        return view('events.index', compact('posts'));
    }

    public function newsShow($slug)
    {
        $post = $this->post->findBySlug($slug);
        $recent = $this->post->allTranslatedIn(App::getLocale())->where('category_id','2')->take(3);

        return view('news.show', compact('post','recent'));
    }
    public function eventsShow($slug)
    {
        $post = $this->post->findBySlug($slug);
        $recent = $this->post->allTranslatedIn(App::getLocale())->where('category_id','1')->take(3);

        return view('events.show', compact('post','recent'));
    }

}

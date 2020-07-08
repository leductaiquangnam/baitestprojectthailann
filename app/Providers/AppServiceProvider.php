<?php

namespace App\Providers;
use App\Categorys;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        view()->composer('layouts.main',function($view){
           $menutheloai=Categorys::all();
           $view->with('menutheloai',$menutheloai);
        });
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}

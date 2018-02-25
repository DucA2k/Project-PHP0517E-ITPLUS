<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Category;
use App\Product;
use App;
use Session;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layouts.header-and-footer', function($view){
            $category = Category::all();
            $product = Product::all();
            $view->with('category', $category);
            $view->with('product', $product);
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.product.detail-product', function($view){
            $category = Category::all();
            $view->with('category', $category);
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('home', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.compare.compare', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.contact.contact', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.home.list-discount-product', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.home.list-new-product', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.home.page-loai-san-pham', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.home.page-tim-kiem', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.account.change-password', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.account.profile', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.account.order', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.account.review', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.account.contact', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.cart.index', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.cart.order', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });

        view()->composer('clients.cart.temp-order', function(){
            if(Session::has('locale')) {
                App::setlocale(Session::get('locale'));
            }
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}

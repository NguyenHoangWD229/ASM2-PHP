<?php

// CRUD bao gồm: Danh sách, thêm, sửa, xem, xóa
// User:
//      GET     -> USER/INDEX   -> INDEX    -> Danh sách
//      GET     -> USER/CREATE  -> CREATE   -> HIỂN THỊ FORM THÊM MỚI
//      POST    -> USER/STORE   -> STORE    -> LƯU DỮ LIỆU TỪ FORM THÊM MỚI VÀO DB
//      GET     -> USER/ID/SHOW         -> SHOW ($id)     -> XEM CHI TIẾT
//      GET     -> USER/ID/EDIT         -> EDIT ($id)     -> HIỂN THỊ FORM CẬP NHẬT
//      POST    -> USER/ID/UPDATE       -> UPDATE ($id)   -> LƯU DỮ LIỆU TỪ FORM CẬP NHẬT VÀO DB
//      GET     -> USER/ID/DELETE       -> DELETE ($id)   -> XÓA BẢN GHI TRONG DB

use Hoangwd\Asm2\Controllers\Admin\CategoriesController;
use Hoangwd\Asm2\Controllers\Admin\DashboardController;
use Hoangwd\Asm2\Controllers\Admin\ProductController;
use Hoangwd\Asm2\Controllers\Admin\UserController;


$router->before('GET|POST', '/admin/*.*', function() {
    if (! isset($_SESSION['user'])) {
        header('location: ' . url('login') );
        exit();
    }
});

$router->mount('/admin', function () use ($router) {

    $router->get('/',               DashboardController::class . '@dashboard');

    // CRUD USER
    $router->mount('/users', function () use ($router) {
        $router->get('/',               UserController::class . '@index');
        $router->get('/create',         UserController::class . '@create');
        $router->post('/store',         UserController::class . '@store');
        $router->get('/{id}/show',      UserController::class . '@show');
        $router->get('/{id}/edit',      UserController::class . '@edit');
        $router->post('/{id}/update',   UserController::class . '@update');
        $router->get('/{id}/delete',    UserController::class . '@delete');
    });

    // CRUD PRODUCT
    $router->mount('/products', function () use ($router) {
        $router->get('/',               ProductController::class . '@index');  // Danh sách
        $router->get('/create',         ProductController::class . '@create'); // Show form thêm mới
        $router->post('/store',         ProductController::class . '@store');  // Lưu mới vào DB
        $router->get('/{id}/show',      ProductController::class . '@show');   // Xem chi tiết
        $router->get('/{id}/edit',      ProductController::class . '@edit');   // Show form sửa
        $router->post('/{id}/update',   ProductController::class . '@update'); // Lưu sửa vào DB
        $router->get('/{id}/delete',    ProductController::class . '@delete'); // Xóa
    });

    $router->mount('/categories', function () use ($router) {
        $router->get('/',               CategoriesController::class . '@index');  // Danh sách
        $router->get('/create',         CategoriesController::class . '@create'); // Show form thêm mới
        $router->post('/store',         CategoriesController::class . '@store');  // Lưu mới vào DB
        $router->get('/{id}/show',      CategoriesController::class . '@update'); // Lưu sửa vào DB
        $router->get('/{id}/delete',    CategoriesController::class . '@delete'); // Xóa
    });
    
});
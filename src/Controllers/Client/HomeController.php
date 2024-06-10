<?php

namespace Hoangwd\Asm2\Controllers\Client;

use eftec\bladeone\BladeOne;
use Hoangwd\Asm2\Commons\Controller;
use Hoangwd\Asm2\Commons\Helper;
use Hoangwd\Asm2\Models\Product;

class HomeController extends Controller
{
    private Product $product;

    public function __construct()
    {
        $this->product = new Product();
    }
    
    public function index() {
        $name = 'Hoangnvph36355';

        $products = $this->product->all();
        // Helper::debug($products);   
        $this->renderViewClient('home', [
            'name' => $name,
            'products' => $products
        ]);
    }
}

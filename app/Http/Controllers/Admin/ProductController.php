<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;
use validate;
use Session;
use App\Category;
use App\ConfigsPhone;
use App\ConfigsTivi;
use App\ConfigsLaptop;
class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $product = Product::all();
        $category = Category::all();
        if($request->has('keyword') && $request->get('keyword') != "")
        {
          $keyword = $request->get('keyword');
          $product = Product::where('name', 'like' ,'%' . $keyword . '%')->get();
        }

        return view('admin.product.manage-product', ['product' => $product,'category' => $category]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.create-product');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,
            [
                'name'=>'required',
                'price' => 'required|numeric',
                'count' => 'required|numeric',
                'status' => 'required',
                'categoryId' => 'required',
                'configId' => 'required',

            ],
            [
                'name.required' => 'Yêu cầu nhập tên sản phẩm',
                'price.required' => 'Yêu cầu nhập giá sản phẩm',
                'count.required' => 'Yêu cầu nhập số lượng sản phẩm',
                'status.required' => 'Yêu cầu nhập trạng thái sản phẩm',
                'categoryId.required' => 'Yêu cầu nhập category_id sản phẩm',
                'configId.required' => 'Yêu cầu nhập config_id sản phẩm',
                'price.numeric' => 'Yêu cầu nhập số',
                'count.numeric' => 'Yêu cầu nhập số'

            ]
        );
        
        $fileName ="no-image.jpg";

        if($request->hasFile('thumbnail'))
        {
              $file = $request->file('thumbnail');
              $fileName = $file->getClientOriginalName().date('Y-m-d H:i:s');
              $fileName = md5($fileName).'.'.$file->getClientOriginalExtension();
              $file->move(public_path('uploads/product/'), $fileName);
        }

        $p = new Product();
        $p->name = $request->name;
        $p->slug = $this->slug($request->name);
        $p->price = $request->price;
        $p->discount = $request->discount;
        $p->count = $request->count;
        $p->description = $request->description;
        $p->status = $request->status;
        $p->thumbnail = $fileName;
        $p->category_id = $request->categoryId;
        $p->config_id = $request->categoryId;
        $p->save();
        
        $now = Product::orderBy('id', 'DESC')
                        ->take(1)
                        ->first();
                        
        if($now->config_id == 1) {
          $ph = new ConfigsPhone();
          $ph->product_id = $now->id;
          $ph->condition = $request->condition;
          $ph->warranty_period = $request->warranty;
          $ph->network_connections = $request->network;
          $ph->tablet_connection = $request->tablet;
          $ph->color = $request->color;
          $ph->screen_size = $request->screen;
          $ph->model = $request->model;
          $ph->operating_system_version = $request->osv;
          $ph->sim_slots = $request->sim;
          $ph->ram_memory = $request->ram;
          $ph->product_size = $request->product;
          $ph->expandable_memory = $request->em;
          $ph->phone_features = $request->pf;
          $ph->storage_capacity = $request->sc;
          $ph->screen_resolution = $request->sr;
          $ph->screen_type = $request->st;
          $ph->core = $request->core;
          $ph->weight = $request->weight;
          $ph->save();
        } else if($now->config_id == 2) {
          $lap = new ConfigsLaptop();
          $lap->product_id = $now->id;
          $lap->processor = $request->processor;
          $lap->operating_system = $request->os;
          $lap->memory = $request->laptopmemory;
          $lap->hard_drive = $request->drive;
          $lap->video_card = $request->card;
          $lap->display = $request->display;
          $lap->primary_battery = $request->laptopbattery;
          $lap->warranty = $request->laptopwarranty;
          $lap->ports = $request->ports;
          $lap->slots = $request->slots;
          $lap->save();
        } else if($now->config_id == 3) {
          $tv = new ConfigsTivi();
          $tv->product_id = $now->id;
          $tv->screen_size = $request->tvscreen;
          $tv->resolution = $request->tvresolution;
          $tv->processor = $request->tvprocessor;
          $tv->wifi_built_in = $request->wifi;
          $tv->web_browser = $request->web;
          $tv->speaker_system = $request->speaker;
          $tv->hdmi = $request->hdmi;
          $tv->usb = $request->usb;
          $tv->weight = $request->tvweight;
          $tv->warranty = $request->tvwarranty;
          $tv->save();
        }

        Session::flash('sucess', 'Tạo mới thành công');
        
        return redirect('admin/product');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      
       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::findOrFail($id);
        return view('admin.product.edit-product', ['product' => $product]);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,
        [
            'name' => 'required',
            'price' => 'required|numeric',
            'count' => 'required|numeric',
            'status' => 'required',
            'categoryId' => 'required',
            'configId' => 'required'
            
        ],
        [
            'name.required' => 'Yêu cầu nhập tên sản phẩm',
            'price.required' => 'Yêu cầu nhập giá sản phẩm',
            'count.required' => 'Yêu cầu nhập số lượng sản phẩm',
            'status.required' => 'Yêu cầu nhập trạng thái sản phẩm',
            'categoryId.required' => 'Yêu cầu nhập category_id sản phẩm',
            'configId.required' => 'Yêu cầu nhập config_id sản phẩm',
            'price.numeric' => 'Yêu cầu nhập số',
            'count.numeric' => 'Yêu cầu nhập số'

        ]
        );
       	$p = Product::findOrFail($id);
        $fileName = $p->thumbnail;

        if($request->hasFile('thumbnail'))
        {
              $file = $request->file('thumbnail');
              $fileName = $file->getClientOriginalName().date('Y-m-d H:i:s');
              $fileName = md5($fileName).'.'.$file->getClientOriginalExtension();
              $file->move(public_path('uploads/product/'), $fileName);
        }

        
        $p->name = $request->name;
        $p->slug = $this->slug($request->name);
        $p->price = $request->price;
        $p->discount = $request->discount;
        $p->count = $request->count;
        $p->description = $request->description;
        $p->status = $request->status;
        $p->thumbnail = $fileName;
        $p->category_id = $request->categoryId;
        $p->config_id = $request->configId;
        $p->save();
        Session::flash('sucess', 'Cập nhật ' . $request->txtName . 'thành công');

        return redirect('admin/product');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $p = Product::findOrFail($id);
        $name = $p->name;
        $p->delete();
        Session::flash('sucess', 'Xóa thành công ' . $name);
        
        return redirect('admin/product');
    }
    
    private function slug($text)
    {
      $text = preg_replace('~[^\pL\d]+~u', '-', $text);
      $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
      $text = preg_replace('~[^-\w]+~', '', $text);
      $text = trim($text, '-');
      $text = preg_replace('~-+~', '-', $text);
      $text = strtolower($text);

      if (empty($text)) {
        return 'n-a';
      }

      return $text;
    }
}

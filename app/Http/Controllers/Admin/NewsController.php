<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\News;
use Session;
class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $new = News::all();
        return view('admin.news.manage-news',['new' => $new]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.news.create-news');
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
                'thumbnail'=>'required|mimes:png,jpg,bmp,gif,jpeg',
                'content'=>'required',
                
            ],
            [
                'name.required'=>'Yêu cầu nhập name',
                'thumbnail.required'=>'Yêu tải ảnh lên hệ thống',
                'thumbnail.mimes'=>'Không đúng định dạng ảnh ',
                'content.required'=>'Yêu cầu nhập content',
            ]
        );

        $fileName ="no-image.jpg";
        if($request->hasFile('thumbnail'))
        {
            $file = $request->file('thumbnail');
            $fileName = $file->getClientOriginalName().date('Y-m-d H:i:s');
            $fileName = md5($fileName).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('uploads/news/'),$fileName);
        }


        $p = new News();
        $p->name = $request->name;
        $p->thumbnail = $fileName;
        $p->content = $request->content;
        $name = $request->name;
        $p->save();

        Session::flash('sucess','Tạo mới '.$name.' thành công !!');
        return redirect('admin/news');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $news = News::findOrFail($id);
        return view('admin.news.edit-news',['news'=>$news]);
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
                'name'=>'required',
                'content'=>'required',
                
            ],
            [
                'name.required'=>'Yêu cầu nhập name',
                'content.required'=>'Yêu cầu nhập content',
            ]
        );

        $news = News::findOrFail($id);
        $fileName = $news->thumbnail;
        if($request->hasFile('thumbnail'))
        {
            $file = $request->file('thumbnail');
            $fileName = $file->getClientOriginalName().date('Y-m-d H:i:s');
            $fileName = md5($fileName).'.'.$file->getClientOriginalExtension();
            $file->move(public_path('uploads/news/'),$fileName);
        }

        $news->name = $request->name;
        $news->thumbnail = $fileName;
        $news->content = $request->content;
        $name = $request->name;
        $news->save();

        Session::flash('sucess','Chỉnh sửa '.$name.' thành công !!');
        return redirect('admin/news');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $news = News::findOrFail($id);
        $name = $news->name;
        $news->delete();
        Session::flash('sucess','Xóa  '.$name.' thành công !!');
        return redirect('admin/news');
    }
}

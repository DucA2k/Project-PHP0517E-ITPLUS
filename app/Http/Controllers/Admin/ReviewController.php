<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Review;

class ReviewController extends Controller
{
    public function index(Request $request)
    {
        if(isset($request))
        {
            $keyword = $request->search;
            $list = Review::where('name', 'like', '%' . $keyword . '%')->get();
        }
        else {
            $list = Review::all();
        }

        return view('admin.review.review', ['list' => $list]);   
    }

    public function pending($id)
    {
        $review = Review::findOrFail($id);
        $review->status = 1;
        $review->save();

        return redirect('admin/review/show');
    }

    public function processed($id)
    {
        $review = Review::findOrFail($id);
        $review->status = 0;
        $review->save();
        
        return redirect('admin/review/show');
    }

}

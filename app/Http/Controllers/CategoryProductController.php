<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\SubCategory;
use App\CategoryProduct;
class CategoryProductController extends Controller
{
    public function getdanhmucsanpham($id){
    	$namesubcategory=SubCategory::find($id);
   	 $danhmucsanpham=CategoryProduct::where('idsubcategory',$id)->get();
     return view('pages.categoryproduct')->with('danhmucsanpham',$danhmucsanpham)->with('namesubcategory',$namesubcategory);
   }
   
    public function getchitietsanpham($id){
   	 $chitietsanpham=CategoryProduct::find($id);
     return view('pages.product',['chitietsanpham'=>$chitietsanpham]);
   }

}

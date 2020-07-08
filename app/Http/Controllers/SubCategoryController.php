<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorys;
use App\SubCategory;
class SubCategoryController extends Controller
{
     public function getdanhmuctheloai($id){
     $namecategory=Categorys::find($id);
   	 $danhmuctheloai=SubCategory::where('idcategory',$id)->get();
     return view('pages.sub_category')->with('namecategory',$namecategory)->with('danhmuctheloai',$danhmuctheloai);
   }
    
  
}



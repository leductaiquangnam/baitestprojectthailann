<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorys;
use App\SubCategory;
class CategorysController extends Controller
{
   public function gettheloai(){
   	$theloai=Categorys::all();
    	return view('pages.categories',['theloai'=>$theloai]);
   }

  
}

<?php

use Illuminate\Database\Seeder;
use App\SubCategory;
class SubCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath1',
        'images' =>'a1.jpg',
        'idcategory' =>1,
        ]);

        DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath2',
        'images' =>'a2.jpg',
        'idcategory' =>1,
        ]);


        DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath3',
        'images' =>'a3.jpg',
        'idcategory' =>2,
        ]);

         DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath4',
        'images' =>'a4.jpg',
        'idcategory' =>1,
        ]);
         DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath5',
        'images' =>'a5.jpg',
        'idcategory' =>1,
        ]);

         DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath6',
        'images' =>'a6.jpg',
        'idcategory' =>1,
        ]);

         DB::table('sub_categories')->insert([
        'name' =>'Signature Salt Bath7',
        'images' =>'a7.jpg',
        'idcategory' =>2,
        ]);

    }
}

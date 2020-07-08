<?php

use Illuminate\Database\Seeder;
use App\CategoryProduct;
class CategoryProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('category_products')->insert([
        'name' =>'Signature Salt Bath Treatment',
        'slug' =>'Signature-Salt-Bath-Treatment',
        'details'=>'Enjoy the full benefits of Sundara’s',
        'price'=>240,
        'description'=>'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service',
        'image1' =>'anh1.jpg',
        'image2' =>'anh2.jpg',
        'image3' =>'anh3.jpg',
        'image4' =>'anh4.jpg',
        'image5' =>'anh5.jpg',
        'idsubcategory' =>1,
        ]);

         DB::table('category_products')->insert([
        'name' =>'Signature Salt Bath1',
        'slug' =>'Signature-Salt-Bath1',
        'details'=>'Enjoy the full benefits of Sundara’s1',
        'price'=>250,
        'description'=>'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service1',
        'image1' =>'anh5.jpg',
        'image2' =>'anh6.jpg',
        'image3' =>'anh7.jpg',
        'image4' =>'anh8.jpg',
        'image5' =>'anh9.jpg',
        'idsubcategory' =>1,
        ]);

          DB::table('category_products')->insert([
        'name' =>'Signature Salt Bath2',
        'slug' =>'Signature-Salt-Bath2',
        'details'=>'Enjoy the full benefits of Sundara’s2',
        'price'=>250,
        'description'=>'Enjoy the full benefits of Sundara’s signature products which draw ingredients indigenous to the area. This treatment begins with exfoliation of the skin, followed by a luxurious bath soak and then full body hydration to conclude the service2',
        'image1' =>'anh10.jpg',
        'image2' =>'anh11.jpg',
        'image3' =>'anh12.jpg',
        'image4' =>'anh13.jpg',
        'image5' =>'anh14.jpg',
        'idsubcategory' =>2,
        ]);
    }
}

<?php

use Illuminate\Database\Seeder;
use App\Categorys;
class CategorysTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
          DB::table('categorys')->insert([
        'name' =>'Hydrotherapy',
        'images' =>'images1.jpg',
        ]);

            DB::table('categorys')->insert([
        'name' =>'Algotherapy',
        'images' =>'images2.jpg',
        ]);

            DB::table('categorys')->insert([
        'name' =>'Physiotherapy',
        'images' =>'images3.jpg',
        ]);

             DB::table('categorys')->insert([
        'name' =>'Aqua Exercise',
        'images' =>'images1.jpg',
        ]);
        
        DB::table('categorys')->insert([
        'name' =>'Underwater Massage',
        'images' =>'images1.jpg',
        ]);
    }
}

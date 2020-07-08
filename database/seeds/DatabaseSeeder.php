<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
       
         $this->call(CategorysTableSeeder::class);
         $this->call(SubCategoryTableSeeder::class);
         $this->call(CategoryProductTableSeeder::class);
         $this->call(OrdersTableSeeder::class);
         $this->call(OrdetailTableSeeder::class);
        
    }
}
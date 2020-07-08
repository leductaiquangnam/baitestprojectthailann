<?php

use Illuminate\Database\Seeder;
use App\Ordetail;
class OrdetailTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('ordetails')->insert([
        'idproduct'=>1,
        'idorder' =>1,
        'price' =>240,
        'amount' =>240,
        ]);
        DB::table('ordetails')->insert([
        'idproduct'=>2,
        'idorder' =>2,
        'price' =>250,
        'amount' =>250,
        ]);
        DB::table('ordetails')->insert([
        'idproduct'=>2,
        'idorder' =>3,
        'price' =>250,
        'amount' =>240,
        ]);
    }
}
    
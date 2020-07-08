<?php

use Illuminate\Database\Seeder;
use App\Orders;
class OrdersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('orders')->insert([
        'orderdate' =>'2020-07-08',
        'customername' =>'Nguyễn Văn A',
        'customeremail' =>'nguyenvana@gmail.com',
        'customerphone' =>'0369835839',
        'customeraddress' =>'Bình Quý Thăng Bình Quảng Nam',
        ]);

         DB::table('orders')->insert([
        'orderdate' =>'2020-07-08',
        'customername' =>'Nguyễn Văn B',
        'customeremail' =>'nguyenvanb@gmail.com',
        'customerphone' =>'0369835839',
        'customeraddress' =>'Bình Quý Thăng Bình Quảng Nam',
        ]);

         DB::table('orders')->insert([
        'orderdate' =>'2020-07-08',
        'customername' =>'Nguyễn Văn C',
        'customeremail' =>'nguyenvanc@gmail.com',
        'customerphone' =>'0369835839',
        'customeraddress' =>'Bình Quý Thăng Bình Quảng Nam',
        ]);
    }
}

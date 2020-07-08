@extends('layouts.masters')
@section('contenner')
<main id="content" class="cart-content content-page">
	<div class="container">
		@if(session()->has('success_message'))
		  <div class="alert alert-success">
                  <strong>{{session()->get('success_message')}}</strong>
            </div>
        @endif
        @if(Cart::count()>0)
		<h1 class="section-title">Cart {{Cart::count()}}</h1>
		<div class="cart-list">
			@foreach(Cart::content() as $item)
			<div class="cart-item">
				<div class="relative-section">
					<a href="{{route('chitietsanpham',$item->model->id)}}" class="image-fit"><img src="assets/images/images2.jpg" alt=""></a>
					<div class="info relative-section">
						<h3><a href="{{route('chitietsanpham',$item->model->id)}}">{{$item->name}}</a></h3>
						<div class="number-custom relative-section">
							<a href="" class="minus"></a>
							<input type="number" name="" id="" value="{{$item->qty}}"  min="1">
							<a href="" class="plus"></a>
						</div>
						<div class="price">{{$item->price}}</div>
					</div>
					<form action="{{route('cartdestroy',$item->rowId)}}" method="POST">
						{{csrf_field()}}
						{{method_field('DELETE')}}
						
					
					<button type="submit" class="cart-remove"><img src="assets/images/menu-close.png" alt=""></button>
						</form>
				</div>
			</div>
		    @endforeach
			
		</div>
		@else 
		<h1 class="section-title">Không có sản phẩm nào</h1>
		<a class="btn btn-success" href="{{route('theloai')}}">Tiếp tục mua hàng</a>
		@endif
	</div>
</main>
    <div id="addCarts" class="paybar">
	<div class="container">
		<div class="row">
			<div class="col-6">
				<div class="total-price">
					Total Price
				</div>
			</div>
			<div class="col-6">
				<div class="price-number text-right font-bold">${{$item->total}}</div>
			</div>
		</div>
		<button class="btn btn-default font-bold">Process to Pay</button>
	</div>
</div>
 @endsection





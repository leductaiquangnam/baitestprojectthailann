@extends('layouts.masters')
@section('contenner')
<div class="detail-slider">
	<div class="slider-item">
		<img src="{{asset('../public/storage')}}/{{$chitietsanpham->image1}}" alt="">
	</div>
	<div class="slider-item">
		<img src="{{asset('../public/storage')}}/{{$chitietsanpham->image2}}" alt="">
	</div>
	<div class="slider-item">
		<img src="{{asset('../public/storage')}}/{{$chitietsanpham->image3}}" alt="">
	</div>
	<div class="slider-item">
		<img src="{{asset('../public/storage')}}/{{$chitietsanpham->image4}}" alt="">
	</div>
	<div class="slider-item">
		<img src="{{asset('../public/storage')}}/{{$chitietsanpham->image5}}" alt="">
	</div>
</div>
<main id="content" class="globale-content">
	<div class="container">
		<h1 class="section-title">{{$chitietsanpham->name}}</h1>
		<div class="content-text">
			<p>{{$chitietsanpham->description}}</p>
		</div>
	</div>
</main>
<main id="content" class="cart-content content-page">
     <div id="addCarts">
	<div class="container">
		<form action="{{route('cartstore')}}" method="POST">
			{{csrf_field()}}
		<input type="hidden" name="id" value="{{$chitietsanpham->id}}" >
		<input type="hidden" name="name" value="{{$chitietsanpham->name}}">
		<input type="hidden" name="price" value="{{$chitietsanpham->price}}">
		<div class="row">
			<div class="col-5">
				<div class="total-price">
					Total Price <b>${{$chitietsanpham->price}}</b>
				</div>
			</div>
			<div class="col-7">
				<div class="quatity text-right">
					Qty: 
					<div class="number-custom relative-section">
						<a href="" class="minus amount"></a>
						<input type="number" name="amount" id="" value="1"  min="1">
						<a href="" class="plus amount"></a>
					</div>
				</div>
			</div>
		</div>
	<!-- 	<button class="btn btn-default font-bold">Add to Cart</button> -->
	
		
		<!-- <input type="hidden" id="amount"name="amount" value="1"> -->
		<button class="btn btn-default font-bold" type="submit">Add to Cart</button>
	</form>
	</div>
    </div>
</main>
 @endsection



@section('script')
 <script>
 	$('.amount').on('change', 
 		function() {
 			alert("co");
 			var value = $(this).val();
 			$('#amount').val(value);
 			alert(value);
 		}
 		);
 	
jQuery(function($){
	$("#loginForm").validate({
	  rules: {
	    profile_id: "required",
	    user_id: "required"
	  },
	  messages: {
  	 	profile_id: "Please enter correct your profile id",
    	user_id: "Please enter correct your user id"
	  }
	});
	$('.detail-slider').slick({
		dots: true,
		infinite: true,
		autoplay: true,
		autoplaySpeed: 5000,
	});
	$('.suggestions ul').slick({
		infinite: true,
	});
	$('.nom-item li a').on('click',function() {
		$(this).toggleClass('active');
		return false;
	});	
})
</script>
@endsection

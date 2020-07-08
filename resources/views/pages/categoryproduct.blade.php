@extends('layouts.master')
  @section('contenner')
    
<main id="content" class="globale-content content-page">
	<div class="container">
		<div class="brecump">
			<a href="home.html">Home</a> <img src="assets/images/arrow-right.png" alt="">
			<a href="sub-category.html"></a> Hydrotherapy<img src="assets/images/arrow-right.png" alt="">
			<span> {{$namesubcategory->name}}</span>
		</div>
		<div class="item-list relative-section">
			<h2 class="section-title">{{$namesubcategory->name}}</h2>
			<ul>
				@foreach ($danhmucsanpham as $giatri ) 
			
				<li>
					<div class="item-item">
						<a href="{{route('chitietsanpham',$giatri->id)}}" class="image-fit">
							<img src="{{asset('../public/storage')}}/{{$giatri->image1}}" alt="">
						</a>
						<div class="info">
							<h3><a href="{{route('chitietsanpham',$giatri->id)}}">{{$giatri->name}}</a></h3>
							<div class="des">{{$giatri->description}}</div>
							<div class="price">${{$giatri->price}}/ 1 hour</div>
						</div>
					</div>
				</li>
			    @endforeach
			</ul>
		</div>
	</div>
</main>
   @endsection
   
@section('script')
  <script>
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
	$('.discovery-slider').slick({
		infinite: true,
		autoplay: true,
		autoplaySpeed: 5000,
	});
})
</script>
@endsection
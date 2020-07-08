@extends('layouts.master')
  @section('contenner')
    
<main id="content" class="globale-content content-page">
	<div class="container">
		<div class="brecump">
			<a href="home.html">Home</a> <img src="assets/images/arrow-right.png" alt="">
			<a href="categories.html">Categories</a> <img src="assets/images/arrow-right.png" alt="">
			<span>{{$namecategory->name}}</span>
		</div>
		<h2 class="section-title">{{$namecategory->name}}</h2>
		<ul class="list-inline catsub-list text-center">
			  @foreach ($danhmuctheloai as $giatri ) 
			<li class="item-inline">
				<a class="catsub-item font-bold" href="{{route('danhmucsanpham',$giatri->id)}}">
					<div class="image">
						<img src="{{asset('../public/storage')}}/{{$giatri->images}}" alt="">
					</div>
					{{$giatri->name}}
				</a>
			</li>
			 @endforeach
		</ul>
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
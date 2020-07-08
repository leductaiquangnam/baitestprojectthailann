@extends('layouts.master')
  @section('contenner')
    
<main id="content" class="globale-content content-page">
	<div class="container">
		<div class="brecump">
			<a href="home.html">Home</a> <img src="assets/images/arrow-right.png" alt="">
			<span>Categories</span>
		</div>
		<div class="categories">
			<h2 class="section-title">Categories</h2>
			<ul>
				  @foreach ($theloai as $giatri ) 
				<li>
					<a href="{{route('danhmuctheloai',$giatri->id)}}" class="cat-item image-fit">
						<img src="../public/storage/{{$giatri->images}}" alt="">
						<h3>{{$giatri->name}}</h3>
					</a>
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
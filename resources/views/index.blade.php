@extends('layouts.master')
  @section('contenner')
    
<main id="content" class="globale-content content-page">
	<div class="container">
		<div class="brecump">
			<a href="home.html">Home</a> 
		</div>
		<div class="categories">
			<ul>
				<li>
					<a href="" class="cat-item image-fit">
						<img src="assets/images/cat1.jpg" alt="">
						<h3>Hydrotherapy</h3>
					</a>
				</li>
				<li>
					<a href="" class="cat-item image-fit">
						<img src="assets/images/cat2.jpg" alt="">
						<h3>Algotherapy</h3>
					</a>
				</li>
				<li>
					<a href="" class="cat-item image-fit">
						<img src="assets/images/cat3.jpg" alt="">
						<h3>Physiotherapy</h3>
					</a>
				</li>
				<li>
					<a href="" class="cat-item image-fit">
						<img src="assets/images/cat4.jpg" alt="">
						<h3>Aqua Exercise</h3>
					</a>
				</li>
				<li>
					<a href="" class="cat-item image-fit">
						<img src="assets/images/cat5.jpg" alt="">
						<h3>Underwater Massage</h3>
					</a>
				</li>
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
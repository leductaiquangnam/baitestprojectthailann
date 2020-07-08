<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Globale</title>
	<link rel="stylesheet" href="{{asset('assets/fonts/font-awesome.css')}}">
	<link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('assets/js/slick/slick.css')}}">
	<link rel="stylesheet" href="{{asset('assets/js/slick/slick-theme.css')}}">
	<link rel="stylesheet" href="{{asset('assets/css/main.css')}}">
	<link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/images/favicon.png')}}" />
</head>
<body>
<div class="the-header">
	<header id="header">
		<div class="container">
			<div class="relative-section text-center">
				<a href="" class="toggle-menu"><img src="{{asset('assets/images/menu.png')}}" alt=""></a>
				<a href="home.html" class="logo"><img src="{{asset('assets/images/logo.png')}}" alt=""></a>
				<div class="header-right">
					<a href="{{route('cart')}}" class="toggle-cars relative-section"><img src="{{asset('assets/images/cart-icon.png')}}" alt=""><span>{{Cart::instance('default')->count()}}</span></a>
				</div>
			</div>
		</div>
	</header>
</div>
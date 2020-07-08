<div class="menu-transform"></div>
<div id="menu-main">
	<div class="menu-inner">
		<a href="" class="menu-close"><img src="assets/images/menu-close.png" alt=""></a>
		<div class="languages text-left">
			<a href="" class="current"><img src="assets/images/fr.png" alt=""> Francais</a>
			<ul>
				<li><a href=""><img src="assets/images/fr.png" alt=""> Francais</a></li>
				<li><a href=""><img src="assets/images/en.jpg" alt=""> England</a></li>
			</ul>
		</div>
		<ul class="menu-main">
			<li><a href="home.html">Home</a></li>
			<li class="has-sub">
				<a href="">Categories</a>
				<ul class="sub-menu">
					@foreach ($menutheloai as $giatri )
					<li><a href="{{route('danhmuctheloai',$giatri->id)}}">{{$giatri->name}}</a></li>
					@endforeach
				</ul>
			</li>
		</ul>
		<a href="" class="logout-link">Log Out</a>
	</div>
</div>
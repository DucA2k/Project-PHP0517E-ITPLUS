@extends('layouts.header-and-footer')
@section('content')
<div class="main">
	<div class="content">
		@foreach($new as $item)
		<div class="image group">
			<div class="grid images_3_of_1">
				<img src="{{ asset('uploads/new/'.$item->thumbnail) }}" alt="" />
			</div>
			<div class="grid news_desc">
				<h3>{{ $item->name }}</h3>
				<p>{{ $item->content }}</p>
				
			</div>
		</div>	
		@endforeach
		<div class="content-pagenation">
			<li><a href="#">Frist</a></li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><span>....</span></li>
			<li><a href="#">Last</a></li>
			<div class="clear"> </div>
		</div>	
	</div> 
</div>
</div>
@endsection
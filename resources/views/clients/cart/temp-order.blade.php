@extends('layouts.header-and-footer')
@section('content')
<div class="main">
	<a href="{{ url('cart/order/create') }}">{{ trans('cart.register') }}</a>
</div>
@endsection

@extends('layouts.header-and-footer')
@section('content')
<div class="main">
	<div class="content">
		<div class="section group">
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				{!! Form::open(['method' => 'POST', 'url' => 'cart/order', 'files' => true]) !!}

					<label for="username">{{ trans('cart.name') }}</label>
					{!! Form::text('username', Auth::check()?Auth::user()->name:null, ['id' => 'username','class' => 'form-control']) !!}
					{!! $errors->first('username','<p style="color:red">:message</p>') !!}
					<br>
					
					<label for="email">{{ trans('cart.email') }}</label>
					{!! Form::email('email', Auth::check()?Auth::user()->email:null, ['id' => 'email','class' => 'form-control']) !!}
					{!! $errors->first('email','<p style="color:red">:message</p>') !!}
					<br>

					<label for="address">{{ trans('cart.address') }}</label>
					{!! Form::text('address', Auth::check()?Auth::user()->address:null, ['id' => 'address','class' => 'form-control']) !!}
					{!! $errors->first('address','<p style="color:red">:message</p>') !!}
					<br>

					<label for="phone">{{ trans('cart.phone') }}</label>
					{!! Form::text('phone', Auth::check()?Auth::user()->phone:null, ['id' => 'phone','class' => 'form-control']) !!}
					{!! $errors->first('phone','<p style="color:red">:message</p>') !!}
					<br>

					<label for="payment">{{ trans('cart.payment') }}</label>
					<select name="payment" id="payment">
						<option value="0">{{ trans("cart.cash") }}</option>
						<option value="1">{{ trans("cart.creditcard") }}</option>
					</select>
					<br>
					<br>

					<?php $total =0 ?>
					@foreach(Cart::content() as $item)
						<?php 
							$total += $item->price*$item->qty;
						?>
					@endforeach
					<label for="total">{{ trans('cart.total') }}</label>
					{!! Form::text('total',$total, ['id' => 'phone','class' => 'form-control','readonly' => true]) !!}
					<br>
					
					<input type="submit" class="btn btn-primary" style="color: white;margin-top: 10px" value="{{ trans('cart.confirm') }}">
				{!! Form::close() !!}
				
			</div>
		</div>
	</div>
</div>
@endsection

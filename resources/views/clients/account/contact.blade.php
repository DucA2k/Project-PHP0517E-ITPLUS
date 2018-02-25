@extends('layouts.header-and-footer')
@section('content')
<div class="main">
	<div class="content">
		<div class="section group">
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3" style="background-color: #f1f1f1;text-align: center;">
				<br>
				<h1>{{ trans('account.dashboard') }}</h1>
				<br>
				<h1>
					<img src="{{ asset('uploads/users/'. Auth::user()->avatar) }}" width="50px" height="50px">
					<br>
					{{ Auth::user()->name }}
				</h1>
				<br>
				<ul>
					<li style="padding:7px">
						<a class="ico ico-user" href="{{ url('profile') }}">
							<p style="font-size: 20px;">{{ trans('account.profile') }}</p>
						</a>
					</li>
					<li style="padding:7px">
						<a class="ico ico-user" href="{{ url('profile/orders') }}">
							<p style="font-size: 20px">{{ trans('account.order') }}</p>
						</a>
					</li>
					<li style="padding:7px" style="padding:7px">
						<a class="ico ico-user" href="{{ url('profile/reviews') }}">
							<p style="font-size: 20px">{{ trans('account.review') }}</p>
						</a>
					</li>
					<li style="background-color: #53EF0E;padding:7px">
						<a class="ico ico-user" href="{{ url('profile/contacts') }}">
							<p style="font-size: 20px">{{ trans('account.contact') }}</p>
						</a>
					</li>
				</ul>
				<br>
			</div>
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
				<table class="table table-hover table-striped">
					<tr>
						<th>{{ trans('account.no') }}</th>
						<th>{{ trans('account.name') }}</th>
						<th>Email</th>
						<th>{{ trans('account.phone') }}</th>
						<th>{{ trans('account.subject') }}</th>
						<th>{{ trans('account.status') }}</th>
						<th>{{ trans('account.date') }}</th>
					</tr>
					@foreach($contact as $key => $item)
						@if($item->status == 1)
							<tr style="color: blue">
								<td>{{ $key + 1 }}</td>
								<td>{{ $item->name }}</td>
								<td>{{ $item->email }}</td>
								<td>{{ $item->phone }}</td>
								<td>{{ $item->subject }}</td>
								<td>{{ trans('account.processed') }}</td>
								<td>{{ $item->created_at }}</td>
							</tr>
						@else
							<tr style="color: red">
								<td>{{ $key + 1 }}</td>
								<td>{{ $item->name }}</td>
								<td>{{ $item->email }}</td>
								<td>{{ $item->phone }}</td>
								<td>{{ $item->subject }}</td>
								<td>{{ trans('account.pending') }}</td>
								<td>{{ $item->created_at }}</td>
							</tr>
						@endif
					@endforeach
				</table>
			</div>
		</div>
	</div>
</div>
@endsection

		<a class="clear">New Notification(s).</a>
		@if(count($datas) > 0)
		<a id="user-notf-clear" data-href="{{ route('user-notf-clear') }}" class="clear" href="javascript:;">
			Clear All
		</a>
		<ul>
		@foreach($datas as $data)
			<li>
				<a href="{{ route('admin-user-show',$data->user_id) }}"> <i class="fas fa-user"></i> A New User Has Registered.</a>
			</li>
		@endforeach

		</ul>

		@else 

		<a class="clear" href="javascript:;">
			No New Notifications.
		</a>

		@endif
		<a class="clear">Product(s) in Low Quantity.</a>
		@if(count($datas) > 0)
		<a id="product-notf-clear" data-href="{{ route('product-notf-clear') }}" class="clear" href="javascript:;">
			Clear All
		</a>
		<ul>
		@foreach($datas as $data)
			<li>
				<a href="{{ route('admin-prod-edit',$data->product->id) }}"> <i class="icofont-cart"></i> {{strlen($data->product->name) > 30 ? substr($data->product->name,0,30) : $data->product->name}}</a>
				<a class="clear">Stock : {{$data->product->stock}}</a>
			</li>
		@endforeach

		</ul>

		@else 

		<a class="clear" href="javascript:;">
			No New Notifications.
		</a>

		@endif
@extends('layouts.vendor')
@section('styles')

<link href="{{asset('assets/admin/css/product.css')}}" rel="stylesheet"/>

@endsection
@section('content')

	<div class="content-area">
		<div class="mr-breadcrumb">
			<div class="row">
				<div class="col-lg-12">
					<h4 class="heading">Product Bulk Upload <a class="add-btn" href="{{ route('admin-prod-types') }}"><i class="fas fa-arrow-left"></i> Back</a></h4>
					<ul class="links">
						<li>
							<a href="{{ route('vendor-dashboard') }}">Dashboard </a>
						</li>
						<li>
							<a href="javascript:;">Products </a>
						</li>
						<li>
							<a href="{{ route('vendor-prod-index') }}">All Products</a>
						</li>
						<li>
							<a href="{{ route('vendor-prod-import') }}">Bulk Upload</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="add-product-content">
			<div class="row">
				<div class="col-lg-12">
					<div class="product-description">
						<div class="body-area">

							<div class="gocover" style="background: url({{asset('assets/images/'.$gs->admin_loader)}}) no-repeat scroll center center rgba(45, 45, 45, 0.5);"></div>
							<form id="geniusform" action="{{route('vendor-prod-importsubmit')}}" method="POST" enctype="multipart/form-data">
								{{csrf_field()}}

								@include('includes.vendor.form-both')



								<div class="row">
									<div class="col-lg-1">
										<div class="left-area">
										</div>
									</div>
									<div class="col-lg-7 text-center">
										<h4 class="heading">Example file :</h4>
										<span style="margin-top:10px;"><a class="btn btn-primary" href="{{asset('assets/product-csv-format.csv')}}">Download Sample CSV</a></span>
									</div>

								</div>
								<hr>
								<div class="row">
									<div class="col-lg-4">
										<div class="left-area">
											<h4 class="heading">Upload a File *</h4>
										</div>
									</div>
									<div class="col-lg-7">
													  <span class="file-btn">
														  <input type="file" id="csvfile" name="csvfile" accept=".csv">
													  </span>

									</div>

								</div>

								<input type="hidden" name="type" value="Physical">
								<div class="row">
									<div class="col-lg-1">
										<div class="left-area">

										</div>
									</div>
									<div class="col-lg-7 text-center">
										<button class="addProductSubmit-btn" type="submit">Start Import</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

		<div class="modal fade" id="setgallery" tabindex="-1" role="dialog" aria-labelledby="setgallery" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered  modal-lg" role="document">
				<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">Image Gallery</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="top-area">
						<div class="row">
							<div class="col-sm-6 text-right">
								<div class="upload-img-btn">
											<label for="image-upload" id="prod_gallery"><i class="icofont-upload-alt"></i>Upload File</label>
								</div>
							</div>
							<div class="col-sm-6">
								<a href="javascript:;" class="upload-done" data-dismiss="modal"> <i class="fas fa-check"></i> Done</a>
							</div>
							<div class="col-sm-12 text-center">( <small>You can upload multiple Images.</small> )</div>
						</div>
					</div>
					<div class="gallery-images">
						<div class="selected-image">
							<div class="row">


							</div>
						</div>
					</div>
				</div>
				</div>
			</div>
		</div>

@endsection

@section('scripts')

<script type="text/javascript">
	
// Gallery Section Insert

  $(document).on('click', '.remove-img' ,function() {
    var id = $(this).find('input[type=hidden]').val();
    $('#galval'+id).remove();
    $(this).parent().parent().remove();
  });

  $(document).on('click', '#prod_gallery' ,function() {
    $('#uploadgallery').click();
     $('.selected-image .row').html('');
    $('#geniusform').find('.removegal').val(0);
  });
                                        
                                
  $("#uploadgallery").change(function(){
     var total_file=document.getElementById("uploadgallery").files.length;
     for(var i=0;i<total_file;i++)
     {
      $('.selected-image .row').append('<div class="col-sm-6">'+
                                        '<div class="img gallery-img">'+
                                            '<span class="remove-img"><i class="fas fa-times"></i>'+
                                            '<input type="hidden" value="'+i+'">'+
                                            '</span>'+
                                            '<a href="'+URL.createObjectURL(event.target.files[i])+'" target="_blank">'+
                                            '<img src="'+URL.createObjectURL(event.target.files[i])+'" alt="gallery image">'+
                                            '</a>'+
                                        '</div>'+
                                  '</div> '
                                      );
      $('#geniusform').append('<input type="hidden" name="galval[]" id="galval'+i+'" class="removegal" value="'+i+'">')
     }

  });

// Gallery Section Insert Ends	

</script>

  <script type="text/javascript">
  $(document).ready(function() {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
  });
  var resize = $('#upload-demo').croppie({
      enableExif: true,
      enableOrientation: true,
      // enableResize: true,
      enableZoom: true,
      viewport: {
          width: 300,
          height: 300,
          type: 'square'
      },
      boundary: {
          width: 350,
          height: 350
      }
  });
  var file = '';
  $('#image').on('change', function () {
    var reader = new FileReader();
      reader.onload = function (e) {
        resize.croppie('bind',{
          url: e.target.result
        }).then(function(){
          console.log('jQuery bind complete');
        });
      }
      reader.readAsDataURL(this.files[0]);
      file = this.files[0];
  });
  $('.upload-image').on('click', function (ev) {
    resize.croppie('result', {
      type: 'canvas',
      size: 'viewport'
    }).then(function (img) {
      if (file.length == 0) {
        img = '';
      }
      html = '<img src="' + img + '" />';
            $("#feature_photo").val(img);

            $.notify('Featured Image Saved','success');
    });
  });
  </script>

<script src="{{asset('assets/admin/js/product.js')}}"></script>
@endsection
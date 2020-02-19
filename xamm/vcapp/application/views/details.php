<?php include('include/header.php'); ?>
	
<div class="jumbotron jumbotron-fluid">
	<div class="container">
		<h1 class="text-center mt-5">Event Details Page</h1> 
	</div>
</div>
	
<?php if(isset($result)){$row = $result->row();}?>

<div class="d-flex justify-content-center mb-5">
	<div class="card" style="width:700px">
		<div class="card-header">
			<h4 class="card-title"><?php if(isset($result)) { echo $row->title;}?></h4>
		</div>
		<div class="card-body">
			<h5 class="card-title">Location: </h5>
			<p class="card-text"><?php if(isset($result)){echo $row->place;} ?></p>
			<h5 class="card-title">Event Start Date & Time: </h5>
			<p class="card-text"><?php if(isset($result)) {echo $row->start;} ?></p>
			<h5 class="card-title" >Event End Date & Time: </h5>
			<p class="card-text"><?php if(isset($result)) { echo $row->end; }?></p>
			<h5 class="card-title">Short Description: </h5>
			<p class="card-text"><?php if(isset($result)){echo $row->s_description;} ?></p>
			<h5 class="card-title">Long Description: </h5>
			<p class="card-text"><?php if(isset($result)){echo $row->l_description; }?></p>
			<h5 class="card-title">Image: </h5>
			<img  class="border border-dark rounded" src="<?php echo base_url(); ?>uploads/<?php if(isset($result)){echo $row->img_name;}?>" alt="No image" style="width:250px;height:250px">
			<hr>
			<a class="btn btn-danger" href="#" onclick="accessToken('<?php if(isset($result)){echo $row->event_id; }?>')">Join</a>
		</div>
	</div>
</div>

<script>
	function accessToken(event_id){
		
		var url = "<?php echo base_url(); ?>/home/generatetoken";
		var data = {'appId':'ad02af.vidyo.io', 'developerKey': '5e9d1341e665482ebaf93fbc761dde29', 'user': 'guest', 'event_id':event_id };
        $.ajax({
		  type: "POST",
		  url: url,
		  data: data,
		  dataType: 'json',
		  success: function(response){
			  var token = response.token;
			  if(token){
				  window.location = "<?php echo base_url(); ?>home/live?event_id=" + event_id;
			  }
		  },
		});
    
	}
	</script>
	
<?php include('include/footer.php');?>
    

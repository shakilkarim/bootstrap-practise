<?php include('include/header.php'); ?>
	
	<div class="jumbotron jumbotron-fluid">
		<div class="container">
			<h1 class="text-center mt-4">More Events List</h1> 
		</div>
	</div>
	
	<div class="container my-5">
	   <div class="card-group">
		<div class="row">
			<?php foreach($data->result() as $row ) { ?>
			<div class="col-4 my-2">
				<div class="card">
					<div class="card-header">
						<h4 class="card-title"><?php echo $row->title ;?></h4>
					</div>
					<div class="card-body">
						<h6 class="text-secondary">place:</h6>
						<p class="card-text"><?php echo $row->place;?></p>
						<h6 class="text-secondary">description:</h6>
						<p class="card-text"><?php echo $row->s_description; ?></p>
						<h6 class="text-secondary">time:</h6>
						<p class="card-text"><?php echo $row->start." to ".$row->end;?></p>
						<hr>
						<a class=" btn btn-sm btn-info stretched-link" href="<?php echo base_url(); ?>home/details/<?php echo $row->event_id; ?>">details</a>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	   </div>	
	   <div class="text-center btn "><?php echo $links; ?></div>
	</div>
	

    <section>
      
    </section>

    <section>
      
    </section>
<?php include('include/footer.php');?>
    

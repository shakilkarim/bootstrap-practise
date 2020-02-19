<?php include('include/header.php'); ?>
    <header class="masthead text-center text-white">
      <div class="masthead-content">
        <div class="container">
          <h1 class="masthead-subheading mb-0">Create Event</h1>
		  <h3>And</h3>
          <h2 class="masthead-subheading mb-0">Take Part In A Video Conference</h2>
          <a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">Learn More</a>
        </div>
      </div>
      <div class="bg-circle-1 bg-circle"></div>
      <div class="bg-circle-2 bg-circle"></div>
      <div class="bg-circle-3 bg-circle"></div>
      <div class="bg-circle-4 bg-circle"></div>
    </header>
	
    <section id="event_list">
      <div class="container">
		<div class="event_heading">
			<h2>RECENT EVENTS</h2>
			<p><a  class="text-info" href="<?php echo base_url(); ?>home/more_events">more events</a></p>
		</div>
		<hr />
		<div class="row">
			<?php foreach($data->result() as $row ) { ?>
			<div class="col-4" style="max-width:400px">
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
						<a class="btn btn-sm btn-info stretched-link" href="<?php echo base_url(); ?>home/details/<?php echo $row->event_id; ?>">details</a>
					</div>
				</div>
			</div>
			<?php  } ?>
		</div>
	  </div>
    </section>

    <section>
      
    </section>

    <section>
      
    </section>
<?php include('include/footer.php');?>
    

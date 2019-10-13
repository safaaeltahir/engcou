<?php
			include('dbcon.php');
			include('header.php');
			
			?>
			<section class="section full-width-bg gray-bg">
				
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8 col-lg-push-3 col-md-push-3 col-sm-push-4" style="text-align:right;">

	<!-- Single Blog Post -->
						<div class="blog-post-single">
							
							<!-- Portfolio Slideshow -->
							<div class="row section-row">
							
							<div class="col-lg-12 col-md-12 col-sm-12">
										<?php
							$id = $_GET['id'];
							$query=mysqli_query($con,"SELECT * FROM `post` where id='$id'");
							while($row=mysqli_fetch_array($query)){
							$id=$row['id'];
									mysqli_query($con,"set NAMES utf8");

							?>
										<h4 class="post-title"><a href="#">
										<div class="animate-onscroll no-margin-top"> <?php echo $row['title']; ?> </div></a>
										</h4>
										<div class="post-meta">
											<span><div> <?php echo $row['post_date']; ?> </div></span>
											<span></span>
										</div>
										<p> <div class="animate-onscroll"> <?php echo $row['body']; ?> </div><br></p>
																				
										 
										
									</div>
									<!-- /Blog Post -->
									
								</div>
								<!-- /Owl Item -->
									<?php } ?>
									<?php
			include('script.html');
			include('footer.html');
			
			?>
								
							
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
							$query=mysqli_query($con,"SELECT * FROM `post` where category_id='9' ");
							while($row=mysqli_fetch_array($query)){
								$id=$row['category_id'];
								mysqli_query($con,"set NAMES utf8");
							?>
                              <div class="animate-onscroll no-margin-top"> <?php echo $row['title']; ?> </div><br>
                           		
                                     
                                       
                                
								<?php } ?>
								 
			
<?php
			include('script.html');
			include('footer.html');
			
			?>
			
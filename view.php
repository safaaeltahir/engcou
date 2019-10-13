<?php
			include('dbcon.php');
			include('header.php');
			
			?>

	
			
			
			<!-- Section -->
	
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8 col-lg-push-3 col-md-push-3 col-sm-push-4" style="text-align:right;">
			
				
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
                              <div class="animate-onscroll no-margin-top"> <?php echo $row['title']; ?> </div><br>
							  <div> <?php echo $row['post_date']; ?> </div><br>
							  <div class="animate-onscroll"> <?php echo $row['body']; ?> </div><br>
                           		
                                     
                                       
                                
								<?php } ?>
							
							</div>

					
					<!-- Sidebar -->
					<div class="col-lg-3 col-md-3 col-sm-4 col-lg-pull-9 col-md-pull-9 col-sm-pull-8 sidebar">
						
												<!-- Featured Video -->
						<div class="sidebar-box white featured-video animate-onscroll" style="text-align:right;">
							<h3> الأكثر استخداماَ </h3>
						
   

 						
												<!-- Accordions -->
						<ul class="accordions toggles">
								
							<!-- Accordion -->
							<li class="accordion">
								
								<div class="accordion-header">
									<div class="accordion-icon"></div>
									<h6 class="post-title"><a href="tast.php"> التسجيل بالمجلس</a></h6>
							 
								</div>
							</li>
							<!-- /Accordion -->
							
							<!-- Accordion -->
							<li class="accordion">
								<div class="accordion-header">
									<div class="accordion-icon"></div>
									<h6 class="post-title"><a href="tast.php"> الدورات التدريبية</a></h6>
 
								</div>
							</li>
							<!-- /Accordion -->
							
							<!-- Accordion -->
							<li class="accordion">
								<div class="accordion-header">
									<div class="accordion-icon"></div>
										<h6 class="post-title"><a href="tast.php"> السلم الهندسي</a></h6>
								 
								</div>
							</li>
							<!-- /Accordion -->
							
							<!-- Accordion -->
							<li class="accordion">
								
								<div class="accordion-header">
									<div class="accordion-icon"></div>
									<h6 class="post-title"><a href="tast.php"> طلب تقويم</a></h6>
								 
								</div>
							</li>
							<!-- /Accordion -->
							
						</ul>
						<!-- /Accordions -->						
						</div>
						<!-- /Featured Video -->						<!-- Upcoming Events -->
					
						<!-- /Upcoming Events -->						<!-- Image Banner -->
						<div class="sidebar-box image-banner animate-onscroll">
							<a href="issues.html">
<iframe src="http://engcouncil.sd/images/books/eng_gulaification.pdf" width="100%" height="100%">		</iframe>						

<h3>مجلة المجلس</h3>
								<span class="button transparent button-arrow">العدد الإخير</span>
							</a>
						</div>
						<div class="sidebar-box category-box white animate-onscroll" style="text-align:right;">
							
							<h3>الأرشيف</h3>
									<ul>
															
								<li><a href="#">سبتمبر</a></li>
								<li><a href="#">اغسطس</a></li>
								<li><a href="#">يوليو</a></li>
								<li><a href="#">يونيو</a></li>
								<li><a href="#">مايو</a></li>
								<li><a href="#">ابريل</a></li>
								<li><a href="#">مارس</a></li>
								<li><a href="#">فبراير</a></li>
								<li><a href="#">يناير</a></li>
								
							</ul>
							
						</div>
						<!-- /Image Banner -->						<!-- Flickr Photos -->
					
						<!-- /Flickr Photos -->						
					</div>
					<!-- /Sidebar -->
					
					
				</div>	
				</div>
				</div>
				</div>
				</div>
				
					
			
			
					
					
	<?php
			include('script.php');
			include('footer.php');
			
			?>	
				
				
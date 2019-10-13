<?php
			include('dbcon.php');
			include('header.php');
			
			?>

			
			<!-- Section -->
			<section class="section full-width-bg full-width-slider-section">
				
				<div class="row">
				
					<div class="col-lg-12 col-md-12 col-sm-12">
						
						<!-- Revolution Slider -->
						<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1280px;height:380px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1280px;height:380px;overflow:hidden;">
            <div data-p="170">
                <img data-u="image" src="img/s3.jpg" />
                <div data-t="0" style="position:absolute;top:320px;left:30px;width:500px;height:40px;font-family:DroidArabicKufiRegular;font-size:24px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">وزير التخطيط العمراني بولاية شمال كردفان 1</div>
            </div>
            <div data-p="170">
                <img data-u="image" src="img/s2.jpg" />
                <div data-t="1" style="position:absolute;top:-50px;left:125px;width:500px;height:40px;font-family:DroidArabicKufiRegular;font-size:24px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">وزير التخطيط العمراني بولاية شمال كردفان 2</div>
            </div>
            <div data-p="170">
                <img data-u="image" src="img/s1.jpg" />
                <div data-t="2" style="position:absolute;top:30px;left:-505px;width:500px;height:40px;font-family:DroidArabicKufiRegular;font-size:24px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);"> وزير التخطيط العمراني بولاية شمال كردفان 3</div>
            </div>
            <div data-p="170">
                <img data-u="image" src="img/s3.jpg" />
                <div data-t="3" style="position:absolute;top:30px;left:30px;width:500px;height:40px;font-family:DroidArabicKufiRegular;font-size:24px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8);">وزير التخطيط العمراني بولاية شمال كردفان 4</div>
            </div>
            <div data-p="170">
                <img data-u="image" src="img/s2.jpg" />
                <div data-t="4" style="position:absolute;top:30px;left:30px;width:500px;height:40px;font-family:DroidArabicKufiRegular;font-size:24px;font-weight:200;line-height:1.2;text-align:center;background-color:rgba(255,188,5,0.8)">وزير التخطيط العمراني بولاية شمال كردفان 5</div>
            </div>

           
           
         
        </div>
		   <div data-u="navigator" class="jssorb052" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
            <div data-u="prototype" class="i" style="width:16px;height:16px;">
                <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <circle class="b" cx="8000" cy="8000" r="5800"></circle>
                </svg>
            </div>
        </div>
        <!-- Arrow Navigator -->
       
    </div>
    <script type="text/javascript">jssor_1_slider_init();</script>
						<!-- /Revolution Slider -->
						
					</div>
					
			 		
<div class="news blue">
<span>اخبار المجلس</span><span class="text1" >

<marquee direction="right" scrollamount="9">

<?php
				$query=mysqli_query($con,"SELECT * FROM `post` where category_id='3'");
					while($row=mysqli_fetch_array($query)){
					$id=$row['id'];
					mysqli_query($con,"set NAMES utf8");?>
					<a href="<?php echo "news.php?id=".$row[0]; ?>" ><?php echo $row['title']; echo "&nbsp; &nbsp; ** &nbsp; &nbsp;"; ?>
	<?php } ?>	
</a></marquee></span>
     
				 	 			
				</div>
				</div>
			
			</section>
			<!-- /Section -->
			
			
			
			
			<!-- Section -->
			<section class="section full-width-bg gray-bg">
				
				<div class="row">
				
					<div class="col-lg-9 col-md-9 col-sm-8 col-lg-push-3 col-md-push-3 col-sm-push-4" style="text-align:right;">
						
						
												<!-- Blog Post -->
						
						<img class="align-right animate-onscroll" style="padding-top:40px;width:150px;height:180px;"src="img/logo_se.png" alt="">
										<h4><a href="shop-productpage.html">	نبذة عن المجلس </a></h4>

						
						<p class="animate-onscroll">
يهدف المجلس الهندسي السوداني إلى النهوض بمهنة الهندسة وكل ما من شأنه تطوير ورفع مستوى هذه المهنة والعاملين فيها، ومن مهامها وضع أسس ومعايير مزاولة المهنة وتطويرها بما في ذلك شروط الترخيص ووضع القواعد والامتحانات اللازمة للحصول على الدرجات المهنية وإعداد الدراسات والأبحاث وتنظيم الدورات وإقامة الندوات والمؤتمرات ذات العلاقة بالمهنة وتقديم المشورة الفنية في مجال اختصاصها وفقاً للضوابط التي يقرها مجلس إدارة الهيئة						
						</p>
						
				
						<!-- /Blog Post -->						
						<!-- Owl Carousel -->
					
						<!-- /Owl Carousel -->						<!-- Banner Rotator -->
						
						<!-- /Banner Rotator -->						
		<h4><a href="shop-productpage.html" style="text-align:center;padding-top:50px;">	 خدمات المجلس الهندسي السوداني  </a></h4>

						<div style "pazz"  class="">
							
							<div class="col-lg-4 col-md-4 col-sm-6 mix" data-dateorder="1" data-popularorder="2" data-avgratingorder="2" data-priceorder="2">
								
								<!-- Shop Item -->
								<div class="shop-item animate-onscroll">
									
									<div class="shop-image">
										<a href="shop-productpage.html">
											<div class="shop-ribbon"></div>
											<div class="shop-featured-image">
												<img style="width:266px;height:244px;"src="img/i55.jpg" alt="">
											</div>
											<div class="shop-hover">
												<img style="width:266px;height:244px;" src="img/i66.jpg" alt="">
											</div>
										</a>
									</div>
									
									<div class="shop-content">
										
										<h4><a href="shop-productpage.html">	استخراج الرقم الهندسي </a></h4>
										<p>
اكد نائب رئيس الجمهورية الاستاذ حسبو محمد عبد الرحمن علي الدور الكبير للمجلس الهندسي في 										</p>
										
										
										<a href="shop-productpage.html" class="button details-button button-arrow transparent">المزيد </a>
										
									</div>
									
								</div>
								<!-- /Shop Item -->
							
							</div>
							
							<div class="col-lg-4 col-md-4 col-sm-6 mix" data-dateorder="2" data-popularorder="1" data-avgratingorder="1" data-priceorder="1">
								
								<!-- Shop Item -->
								<div class="shop-item animate-onscroll">
									
									<div class="shop-image">
										<a href="shop-productpage.html">
											<div class="shop-ribbon"></div>
											<div class="shop-featured-image">
												<img style="width:266px;height:244px;" src="img/i22.jpg" alt="">
											</div>
											<div class="shop-hover">
												<img style="width:266px;height:244px;" src="img/i44.jpg" alt="">
											</div>
										</a>
									</div>
									
									<div class="shop-content">
										
										<h4><a href="shop-productpage.html">درجات التسجيل ومطلوباتها</a></h4>
										<p>
 نائب رئيس الجمهورية الاستاذ حسبو محمد عبد الرحمن علي الدور الكبير للمجلس الهندسي في 										</p>


										
<section id="content">	

<section class="section page-heading animate-onscroll">
				
					
					<div class="col-lg-3 col-md-3 col-sm-3 align-right">
					
												<!-- Shopping Cart -->
						<div class="shopping-cart">
						
							<div class="cart-button"style="display:none">
 </div>					<a href="shop-productpage.html" class="button details-button button-arrow transparent">المزيد </a>
</br></br>

							
							<div class="shopping-cart-dropdown" style="text-align:right;">
							
								<div class="shopping-cart-content">
									<div class="cart-item">
										
										<div class="item-content"style="text-align:right;padding-right:35px;">
											<h6 ><a href="#">المهندسين </a></h6>
											<span class="price">تسجيل المهندسين</span>
											<div class="remove-item">
											</div>
										</div>
										<div class="featured-image">
											<img style="width:60px;height:55px;"src="img/i3.png" alt="">
										</div>
									</div>
												<div class="cart-item">
										
										<div class="item-content"style="text-align:right;padding-right:35px;">
											<h6 ><a href="#">الفنيين </a></h6>
											<span class="price">تسجيل المهندسين</span>
											<div class="remove-item">
											</div>
										</div>
										<div class="featured-image">
											<img style="width:60px;height:55px;"src="img/i3.png" alt="">
										</div>
									</div>
									<div class="cart-item">
										
										<div class="item-content"style="text-align:right;padding-right:35px;">
											<h6 ><a href="#">العمال </a></h6>
											<span class="price">تسجيل المهندسين</span>
											<div class="remove-item">
											</div>
										</div>
										<div class="featured-image">
											<img style="width:60px;height:55px;"src="img/i3.png" alt="">
										</div>
									</div>
									

								</div>
								
							</div>
							
						</div>
						<!-- /Shopping Cart -->						
				</div>
				
			</section></section>										
									</div>
									
								</div>
								<!-- /Shop Item -->
							
							</div>
							
							
							<div class="col-lg-4 col-md-4 col-sm-6 mix" data-dateorder="3" data-popularorder="9" data-avgratingorder="6" data-priceorder="3">
								
								<!-- Shop Item -->
								<div class="shop-item animate-onscroll">
									
									<div class="shop-image">
										<a href="shop-productpage.html">
											<div class="shop-ribbon"></div>
											<div class="shop-featured-image">
												<img style="width:266px;height:244px;" src="img/i33.jpg" alt="">
											</div>
											<div class="shop-hover">
												<img style="width:266px;height:244px;"src="img/i55.jpg" alt="">
											</div>
										</a>
									</div>
									
									<div class="shop-content">
										
										<h4><a href="shop-productpage.html">الاعتماد المهني</a></h4>
										<p>
اكد نائب رئيس الجمهورية الاستاذ حسبو محمد عبد الرحمن علي الدور الكبير للمجلس الهندسي في 										</p>
										
										
										<a href="shop-productpage.html" class="button details-button button-arrow transparent">المزيد </a>
										
									</div>
									
								</div>
								<!-- /Shop Item -->
							
							</div>
							
							
						
							
							
							
							
							
							
							
					
							
						</div>
<h3>إحصائيات المجلس</h3>
						
												<p>المهندسين</p>
						<div class="progressbar" data-percent="80">
							<span class="progress-percent">80%</span>
							<div class="progress-width" style="width:80%;"></div>
						</div>
						
						<p>التقنيين</p>
						<div class="progressbar" data-percent="65">
							<span class="progress-percent">65%</span>
							<div class="progress-width" style="width:65%;"></div>
						</div>
						
						<p>العمال المهرة</p>
						<div class="progressbar" data-percent="92">
							<span class="progress-percent">92%</span>
							<div class="progress-width" style="width:92%;"></div>
						</div>

						<p>مراكز التدريب</p>
						<div class="progressbar" data-percent="70">
							<span class="progress-percent">70%</span>
							<div class="progress-width" style="width:70%;"></div>
						</div>						
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
				<div class="row no-margin-bottom" style="text-align:right;">
				
					
					<div class="col-lg-12 col-md-12 col-sm-12">
						
												
						<!-- Owl Carousel -->
						<div class="owl-carousel" data-max-items="1">			
						<div class="owl-carousel-container">
							<div class="owl-header">
							  <h3 class="animate-onscroll"style="text-align:center;">أخبار المجلس</h3>
								 <div class="carousel-arrows animate-onscroll">
									<span class="left-arrow"><i class="icons icon-left-dir"></i></span>
									<span class="right-arrow"><i class="icons icon-right-dir"></i></span>
								      </div>
     							     </div>
							
								<div class="owl-carousel" data-max-items="4">	
<?php
				$query=mysqli_query($con,"SELECT * FROM `post` where category_id='3'");
					while($row=mysqli_fetch_array($query)){
					$id=$row['id'];
					mysqli_query($con,"set NAMES utf8");
	?>									
								<!-- Owl Item -->
								<div>
									
	<!-- Blog Post -------------------------------->
				
	<div class="blog-post animate-onscroll">	
				<div class="post-image">
				
			 <img src="img/aaa.jpg" style=" 400px; height: 200px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt="">
				  </div>
				    <h4 class="post-title"><a href="work.php"><?php echo $row['title']; ?> </a></h4>
				     <div class="post-meta">
					  <span><?php echo $row['post_date']; ?></a></span>
					   <span> : نشر بتاريخ </span>
				      </div>
				    <p> <div class="animate-onscroll"> <?php echo $row['summery']; ?></p>
			      <a href="<?php echo "news.php?id=".$row[0]; ?>" class="button read-more-button big button-arrow">المزيد</a>
				
				</div>
				</div>
				</div>
			<?php } ?>
	<!-- /Blog Post ------------------------------------>
	</div>
	 
	<!-- /Owl Item -->
		</div>
	</div>
	</div>
	</div>
	</br><br/>							
			<div class="row">
			</br><br/>
			<div class="col-lg-12 col-md-12 col-sm-12 animate-onscroll">
						
				<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-4">
			<a href="#">	<img src="img/p2.jpg" style=" width:100%;; height: 180px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt=""></a>

								
							</div>
							
							<div class="col-lg-2 col-md-2 col-sm-4">
			<a href="#">	<img src="img/p3.jpg" style=" width:100%;; height: 180px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt=""></a>
							</div>
							
							<div class="col-lg-2 col-md-2 col-sm-4">
								
										<a href="#">	<img src="img/p22.jpg" style=" width:100%;; height: 180px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt=""></a>

							</div>
							
							<div class="col-lg-2 col-md-2 col-sm-4">
								
			<a href="#">	<img src="img/ee.jpg" style=" width:100%; height: 180px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt=""></a>

								
							</div>
							
							<div class="col-lg-2 col-md-2 col-sm-4">
								
											<a href="#">	<img src="img/p5.png" style=" width:100%;; height: 180px; border:2px solid #fff; box-shadow: 10px 10px 5px #ccc; -moz-box-shadow: 10px 10px 5px #ccc; -webkit-box-shadow: 10px 10px 5px #ccc; -khtml-box-shadow: 10px 10px 5px #ccc;" alt=""></a>

								
							</div>
							
							<div class="col-lg-2 col-md-2 col-sm-4">
								
			<img src="img/part2.png" style=" 255px; height: 140px; " alt="">

								
							</div>
							
						</div>					
					</div>
					
					
	<?php
			include('script.php');
			include('footer.php');
			
			?>	
				
				
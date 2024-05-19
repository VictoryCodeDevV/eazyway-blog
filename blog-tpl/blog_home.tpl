<?php echo $header; ?>
<main class="site-main blog-categories">
	<div class="container blog__container">
		<div class="blog-categories__breadcrumbs page-categories__breadcrumbs breadcrumbs">
			<div class="breadcrumbs__list">
	<?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
	<?php if($i+1<count($breadcrumbs)) { ?>
	<a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link breadcrumbs__link--back"><?php echo $breadcrumb['text']; ?></a>
	<?php } else { ?>
	<span class="breadcrumbs__link is-active"><?php echo $breadcrumb['text']; ?></span>
	<?php } ?>
	<?php } ?>
			</div>
		</div>
			<aside class="blog__tabs">
				<?php echo $column_left; ?>
			</aside>

			<div class="site-main__content catalog" style="width: 100%;">

				<div class="catalog__top">
					<div class="catalog__top-wrapper">
						<div class="current-category current-category--desktop"><?php echo $heading_title; ?>;</div>
					</div>
				</div>
				
				<div class="catalog__content">
				    <?php if($blogs){ ?>
					<div class="cards">
						<?php foreach ($blogs as $blog) { ?>
						<div class="cards__item card">
							<a href='<?php echo $blog['href']; ?>' class="card__inner">
                        		<div class="card__img img-wrapper">
                        		    <span class="card__category"><?php echo $heading_title; ?></span>
									<picture><source srcset="<?php echo $blog['image']; ?>" type="image/webp"><img src="<?php echo $blog['image']; ?>" alt=""></picture>
                        		</div>
                        		<div class="card__content">
                        		    <h2 class="card__title">
										<?php echo $blog['title']; ?>
                        		    </h2>
                        		    <p class="card__description">
										<?php echo $blog['short_description']; ?>
                        		    </p>
                        		    <div class="card__read">
                        		        <span>Читать далее</span>
                        		    </div>
                        		</div>
                    		</a>
						</div>
						<?php } ?>

						<div class="cards__item form">
                    		<div class="form_inner">
                    		    <h2 class="form_title title-h3">
                    		        Хотите узнавать о новых статьях в числе первых?
                    		    </h2>
                    		    <div class="form_subtitle">
                    		        Подпишитесь на нашу рассылку, чтобы получать новости и интересные статьи на электронную почту.
                    		    </div>
								
                    		    <form role="form" data-toggle="validator" enctype="multipart/form-data" class="form_form" id="form-sobfeedback40">
								
								
                    		        <div class="inputs required">
                    		              <input type="text" class="inputs__field" name="sob_input[1][Введите email]" id="sobInput40-1" required="" placeholder="Имя">
                    		              <input type="text" class="inputs__field" name="sob_input[1][Введите email]" id="sobInput40-1" required="" placeholder="Email">
                    		              <span class="help-block with-errors"></span>
                    		              <input type="hidden" class="form-control" name="sob_input[1][required]" id="sobInputHiddden40-1" value="input">
				
								
                    		    <input type="hidden" name="link_page" value="http://test.eazy-way.com/index.php?route=blog/category&amp;blogpath=52">
                    		    <input type="hidden" name="module_name" value="Подписка">
                    		    <input type="hidden" name="module_id" value="40">
                    		    <input type="hidden" name="form_success" value="Спасибо! Вы успешно подписались.">
								
                    		            <button class="inputs__btn" type="submit"> ПОДПИСАТЬСЯ </button>
								
                    		        </div>
                    		    </form>
								
                    		    <div class="form_description">
                    		        Нажимая на кнопку, я даю согласие на обработку персональных данных
                    		    </div>
                    		</div>






                </div>
				
					<?php }else{ ?>
		<p><?php echo $text_no_results; ?></p>
	<?php } ?>
				</div>

			</div>
		</div>
	</div>
</main>


<?php echo $footer; ?> 
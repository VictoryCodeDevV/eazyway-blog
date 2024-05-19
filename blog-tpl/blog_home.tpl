<?php echo $header; ?>
<main class="site-main blog-categories">
	<div class="container">
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
		<div class="container blog__container">
			<aside class="blog__tabs">
				<?php echo $column_left; ?>
			</aside>

			<div class="site-main__content catalog" style="width: 100%;">

				<div class="catalog__top">
					<div class="catalog__top-wrapper">
						<div class="current-category current-category--desktop"><?php echo $heading_title; ?></div>

					</div>
				</div>
				
				<div class="catalog__content">
				    <?php if($blogs){ ?>
					<div class="catalog__articles">
						<?php foreach ($blogs as $blog) { ?>
						<div class="catalog__article article">
							<div class="article__img">
								<a href="<?php echo $blog['href']; ?>" class="article__img-link">
									<picture><source srcset="<?php echo $blog['image']; ?>" type="image/webp"><img src="<?php echo $blog['image']; ?>" alt=""></picture>
								</a>
							</div>
							<div class="article__content">
								<div class="article__wrapper">
									<div class="article__top">
										<a href="<?php echo $blog['href']; ?>" class="article__date"><?php echo $blog['date_added_full']; ?></a>
									</div>
									<a href="<?php echo $blog['href']; ?>" class="article__title"><?php echo $blog['title']; ?></a>
									<div class="article__excerpt"><?php echo $blog['short_description']; ?></div>
								</div>
								<a href="<?php echo $blog['href']; ?>" class="article__more">Подробнее</a>
							</div>
						</div>
						<?php } ?>
					</div>
					<?php }else{ ?>
		<p><?php echo $text_no_results; ?></p>
	<?php } ?>
				</div>

			</div>
		</div>

	 <?php echo $content_bottom; ?>
	</div>
</main>
<?php echo $footer; ?> 
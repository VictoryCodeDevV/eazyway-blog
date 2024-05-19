<?php echo $header; ?>
<main class="site-main article-page">
	<div class="container">
		<div class="article-page__breadcrumbs page-categories__breadcrumbs breadcrumbs">
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
		<div class="article-page__thumbnail-main thumbnail-main"
			style="background: url(<?php echo $blogsetting_post_thumb; ?>) no-repeat center/cover;">
			<div class="thumbnail-main__wrapper">
				<div class="thumbnail-main__date"><?php echo $date_added_full; ?></div>
				<div class="thumbnail-main__title"><?php echo $heading_title; ?></div>
			</div>
		</div>
		<div class="article-page__container">
			<div class="article-page__content article-page-content">
				<p><?php echo $description; ?></p>
			</div>
			<div class="article-page__taxonomy taxonomy-article">

				<div class="taxonomy-article__social">
					<div class="taxonomy-article__social-label">Поделиться:</div>
					<div class="footer-social_list">
					
						<?php $current_url="https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>
						
						<a href="" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?php echo $current_url; ?>','','toolbar=0,status=0,width=626,height=436'); return false;" class="footer-social_item">
							<svg width="20" height="20" viewBox="0 0 20 20" fill="none"
								xmlns="http://www.w3.org/2000/svg">
								<mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="6" y="3" width="9"
									height="14">
									<path
										d="M13.7127 3.00273L11.7936 3C9.63816 3 8.24452 4.35244 8.24452 6.44528V8.03402H6.31565C6.14918 8.03402 6.01392 8.16198 6.01392 8.31949V10.6212C6.01392 10.7787 6.14917 10.9067 6.31565 10.9067H8.24512V16.7145C8.24512 16.872 8.38038 17 8.54685 17H11.0642C11.2307 17 11.366 16.872 11.366 16.7145L11.3654 10.9067H13.6214C13.7879 10.9067 13.9232 10.7788 13.9232 10.6212L13.9243 8.31949C13.9243 8.24402 13.8925 8.17129 13.8359 8.11769C13.7792 8.0641 13.7024 8.03402 13.6226 8.03402H11.3654V6.6876C11.3654 6.0401 11.5284 5.71196 12.4197 5.71196L13.7122 5.71142C13.8787 5.71142 14.0139 5.58345 14.0139 5.42594V3.28813C14.0139 3.13117 13.8792 3.0032 13.7128 3.00265L13.7127 3.00273Z"
										fill="#172ACB" />
								</mask>
								<g mask="url(#mask0)">
									<rect x="6.01392" y="3" width="8" height="14" fill="#1D1F22" />
								</g>
							</svg>
						</a>
						<a href="#" onclick="window.open('https://twitter.com/share?url=<?php echo $current_url; ?>&text=<?php echo $heading_title; ?>','','toolbar=0,status=0,width=626,height=436'); return false;" class="footer-social_item">
							<svg width="15" height="15" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink"
								viewBox="0 0 512 512">
								<g>
									<path d="M512,97.248c-19.04,8.352-39.328,13.888-60.48,16.576c21.76-12.992,38.368-33.408,46.176-58.016
								   c-20.288,12.096-42.688,20.64-66.56,25.408C411.872,60.704,384.416,48,354.464,48c-58.112,0-104.896,47.168-104.896,104.992
								   c0,8.32,0.704,16.32,2.432,23.936c-87.264-4.256-164.48-46.08-216.352-109.792c-9.056,15.712-14.368,33.696-14.368,53.056
								   c0,36.352,18.72,68.576,46.624,87.232c-16.864-0.32-33.408-5.216-47.424-12.928c0,0.32,0,0.736,0,1.152
								   c0,51.008,36.384,93.376,84.096,103.136c-8.544,2.336-17.856,3.456-27.52,3.456c-6.72,0-13.504-0.384-19.872-1.792
								   c13.6,41.568,52.192,72.128,98.08,73.12c-35.712,27.936-81.056,44.768-130.144,44.768c-8.608,0-16.864-0.384-25.12-1.44
								   C46.496,446.88,101.6,464,161.024,464c193.152,0,298.752-160,298.752-298.688c0-4.64-0.16-9.12-0.384-13.568
								   C480.224,136.96,497.728,118.496,512,97.248z" fill="#1D1F22" />
								</g>
							</svg>


						</a>
					</div>
				</div>
			</div>
			<div id="articlePageTabs" class="article-page__tabs tabs">
				<div class="article-page__tabs-label">Комментарии</div>
				<div class="article-page__tabs-triggers tabs-triggers">
					<a href="#tab-1" class="tabs-triggers__item">Последние</a>
				</div>
				<form id="comment_form">
				<div class="article-page__content tabs-content">
					<div id="tab-1" class="tabs-content__item">
						<ol class="article-page__comments comments">
                            
							<div id="comment"></div>
							
				
							
						</ol>
					</div>

				</div>
				
				    <div class="article-page__comment-form comment-form" style="padding-bottom: 0px;">
					<div class="input-group">
						 <input type="text" name="name" value="" id="input-name" class="input-group__field" />
						 <label class="input-group__title">Имя</label>
					</div>
					</div>
					
					<div class="article-page__comment-form comment-form" style="padding-bottom: 0px;">
					<div class="input-group">
						<input type="text" name="email" value="" id="input-email" class="input-group__field" />
						<label class="input-group__title">Email</label>
					</div>
					</div>
					
				<div class="article-page__comment-form comment-form">
					
					<div class="input-wrapper">
						<textarea class="input-wrapper__text input-wrapper__textarea" name="comment" id="input-comment" placeholder="Написать комментарий"></textarea>
						<button type="button" id="button-comment" class="btn-dark comment-form__btn">Отправить</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>

<?php echo $content_bottom; ?>
</main>

<script type="text/javascript"><!--

$('#comment').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();
	$("html,body").animate({scrollTop:(($("#comment").offset().top)-50)},500);
    $('#comment').fadeOut(50);

    $('#comment').load(this.href);

    $('#comment').fadeIn(500);
	
});

$('#comment').load('index.php?route=blog/blog/comment&blog_id=<?php echo $blog_id; ?>');
//--></script>

<script type="text/javascript"><!--

$('#button-comment').on('click', function() {
	$.ajax({
		url: 'index.php?route=blog/blog/write&blog_id=<?php echo $blog_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#comment_form").serialize(),
		
		complete: function() {
			$('#button-comment').button('reset');
			$('#captcha_comment').attr('src', 'index.php?route=blog/blog/captcha#'+new Date().getTime());
			$('input[name=\'captcha_comment\']').val('');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();
			
			if (json['error']) {
				$('#comment').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}
			
			if (json['success']) {
				$('#comment').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('input[name=\'name\']').val('');
				$('input[name=\'email\']').val('');
				$('textarea[name=\'comment\']').val('');
				$('input[name=\'captcha_comment\']').val('');
			}
		}
	});
});    
</script>

<script type="application/ld+json">
{
"@context": "http://schema.org",
"@type": "NewsArticle",
"mainEntityOfPage": {
"@type": "WebPage",
"@id": "https://google.com/article"
},
"headline": "<?php echo $heading_title ?>",
<?php if($blogsetting_post_thumb){ ?>
"image": {
"@type": "ImageObject",
"url": "<?php echo $blogsetting_post_thumb ?>",
"height": <?php echo $img_height ?>,
"width": <?php echo $img_width ?>
},
<?php } ?>
"datePublished": "<?php echo $date_added_full ?>",
"dateModified": "<?php echo $date_added_full ?>",
"author": {
"@type": "Person",
"name": "<?php echo $author ?>"
},
"publisher": {
"@type": "Organization",
"name": "<?php echo $store ?>",
<?php if($logo){ ?>
"logo": {
"@type": "ImageObject",
"url": "<?php echo $logo ?>"
}
<?php } ?>
},
"description": "<?php echo $short_description ?>"
}
</script>
<?php echo $footer; ?> 
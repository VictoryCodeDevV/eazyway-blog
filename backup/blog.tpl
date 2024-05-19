<?php echo $header; ?>
<div class="site-main article-page">
	<div class="blogcontent">
		<section class="page article">
			<div class="article__container">
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
				<h1 class="article__title section-title"><?php echo $heading_title; ?></h1>
				<div class="article__inner">
					<main class="article__main">
						<div class="article__banner">
							<div class="article__banner-labels">
								<?php foreach ($tags as $tag): ?>
									<div class="article__banner-label">
										<?= $tag['tag']; ?>
									</div>
								<?php endforeach; ?>
							</div>
							<picture>
								<source srcset="<?php echo $blogsetting_post_thumb; ?>" type="image/webp"><img
									src="<?php echo $blogsetting_post_thumb; ?>" alt="banner">
							</picture>
						</div>
						<div class="article__wrapp">
							<div class="article__content">
								<? if ($descontent): ?>
								<div class="article__content-title">Содержание</div>
								<div class="article__content-items">
									<?= $descontent; ?>
								</div>
								<? endif; ?>
								<div class="article__content-subtitle">Поделиться</div>
								<div class="article__content-social social">
									<?php $current_url="https://".$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI']; ?>
									<a class="social__item" href="https://vk.com/share.php?url=<?php echo $current_url; ?>" target="_blank">
										<svg width="22" height="22" viewBox="0 0 22 22" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M21.0224 14.3288C20.5439 13.7553 20.0033 13.2432 19.4804 12.748C19.2966 12.5739 19.1065 12.3939 18.9235 12.2152C18.6773 11.975 18.5566 11.8045 18.544 11.6786C18.5317 11.5548 18.6162 11.3712 18.8107 11.0998C19.1016 10.6916 19.4116 10.2827 19.7115 9.88732C19.9781 9.53583 20.2537 9.17236 20.5179 8.80682L20.5772 8.72475C21.0926 8.01138 21.6255 7.27373 21.9111 6.37482C21.9926 6.11709 22.0773 5.7357 21.8731 5.40089C21.6687 5.06599 21.2898 4.96673 21.0228 4.92127C20.8924 4.89893 20.7687 4.89708 20.6535 4.89708L17.3103 4.89411C16.7323 4.88449 16.3313 5.15846 16.1127 5.70863C15.9378 6.14803 15.7313 6.65726 15.492 7.14031C15.0342 8.07287 14.4524 9.14696 13.6092 10.0419L13.5717 10.0818C13.5143 10.143 13.4205 10.2432 13.3723 10.2662C13.281 10.2088 13.1756 9.88049 13.1804 9.70848C13.1805 9.70423 13.1806 9.70002 13.1806 9.69581L13.1776 5.83277C13.1776 5.81313 13.1762 5.7935 13.1736 5.77403C13.0986 5.22291 12.9525 4.67042 12.0802 4.49828C12.0522 4.49274 12.0238 4.48999 11.9953 4.48999H8.51764C7.86335 4.48999 7.51728 4.78961 7.23983 5.11446C7.15952 5.20916 6.94614 5.46062 7.05485 5.76802C7.16485 6.07907 7.49262 6.14116 7.60021 6.16152C7.9792 6.23345 8.17518 6.44765 8.23585 6.85715C8.35578 7.6528 8.37047 8.50398 8.28217 9.5345C8.25755 9.81118 8.21175 10.0215 8.13784 10.1964C8.11739 10.2448 8.09942 10.2748 8.08688 10.2924C8.06685 10.2844 8.0357 10.2689 7.99256 10.2394C7.72624 10.0571 7.52553 9.77384 7.33144 9.49995C6.5562 8.40541 5.9041 7.19652 5.33764 5.80368C5.10436 5.23292 4.66582 4.91414 4.10362 4.90589C3.03249 4.88805 2.04185 4.88848 1.07608 4.90726C0.620564 4.91517 0.301134 5.05856 0.126508 5.33351C-0.0483318 5.60899 -0.0419295 5.96021 0.145587 6.37761C1.48604 9.35837 2.70318 11.5268 4.09193 13.4085C5.06978 14.7334 6.05411 15.653 7.18964 16.3027C8.38272 16.9852 9.72824 17.3197 11.2892 17.3197C11.4667 17.3197 11.6473 17.3154 11.8303 17.3066C12.7934 17.2628 13.1852 16.8797 13.228 15.9417C13.2519 15.446 13.3071 15.0444 13.4985 14.6955C13.5521 14.5978 13.6125 14.5323 13.6601 14.5204C13.7107 14.5077 13.8005 14.5387 13.9003 14.6035C14.0828 14.7221 14.2399 14.8828 14.3691 15.0238C14.5001 15.1672 14.6325 15.3153 14.7605 15.4585C15.0331 15.7635 15.3149 16.0788 15.6102 16.3796C16.2781 17.0604 17.048 17.3726 17.8995 17.3072L20.9591 17.3087C20.9688 17.3087 20.9787 17.3084 20.9884 17.3077C21.3413 17.2842 21.6464 17.0888 21.8256 16.7715C22.0414 16.3895 22.0381 15.9055 21.8167 15.4765C21.5857 15.0304 21.286 14.6465 21.0224 14.3288ZM20.3306 16.0512C20.2183 16.0512 19.9085 16.048 19.8816 16.0512H18.8107H17.749C17.1463 16.1014 16.7851 15.6581 16.2898 15.1533C16.0088 14.867 15.8761 14.7298 15.6102 14.4324C15.4807 14.2875 15.1897 14.0659 15.0551 13.9186C14.8882 13.7363 14.6342 13.5295 14.3691 13.3573C13.9723 13.0997 13.4651 13.3054 13.2592 13.3573C13.0554 13.4087 12.5836 13.8495 12.3612 14.2553C12.0731 14.7803 12.0503 15.1794 12.0245 15.7145C12.0095 16.0417 11.9122 16.0512 11.8 16.0512C11.6877 16.0512 11.6888 16.0358 11.351 16.0512C9.72781 16.1275 9.05103 15.8282 7.87141 15.1533C6.84522 14.5661 6.08052 13.795 5.17753 12.5716C3.82723 10.7421 2.66064 9.11211 1.34687 6.19065C1.29926 6.08482 1.01439 5.88928 1.01013 5.85392C1.04365 5.84292 1.23205 6.19276 1.34687 6.19065C2.30284 6.17213 3.04216 6.17295 4.10362 6.19065C4.24894 6.1928 4.26523 6.3029 4.26523 6.3029C4.85709 7.75821 5.47095 9.08917 6.28564 10.2394C6.50195 10.5447 7.01239 10.9709 7.40809 11.2417C7.77053 11.4899 8.23533 11.632 8.41829 11.5784C8.78454 11.4711 9.14515 11.1978 9.31625 10.7927C9.42664 10.5316 9.5077 10.0418 9.54074 9.67025C9.63515 8.56797 9.55878 7.50404 9.4285 6.63963C9.33667 6.02032 9.31625 6.0164 9.4285 5.85392C9.46184 5.80566 9.513 5.74167 9.65299 5.74167H11.6734C11.8979 5.74167 11.8402 5.77403 11.8402 5.77403C11.8958 5.84798 11.8785 5.94173 11.8979 6.07841V9.69581C11.8902 10.0627 12.0908 11.226 12.6979 11.4492C13.4837 11.7379 14.1853 11.0976 14.3816 10.888C15.3053 9.90761 16.0283 8.62264 16.5143 7.63285C16.7675 7.12173 17.0064 6.74164 17.1877 6.28591C17.2324 6.17366 17.4397 6.1695 17.6367 6.17366H20.1061C20.184 6.17366 20.2676 6.16288 20.3306 6.17366C20.4901 6.20082 20.4428 6.28591 20.4428 6.28591C20.4451 6.3113 20.4428 6.5104 20.3306 6.73489C20.0878 7.49926 20.0416 7.50648 19.5449 8.19407C19.2868 8.55123 18.9104 8.96895 18.6469 9.31652C18.3431 9.71704 17.9344 10.2455 17.6367 10.6635C17.0002 11.5516 17.1791 12.2458 17.9734 13.0206C18.1612 13.2039 18.6246 13.7423 18.8107 13.9186C19.3384 14.4184 19.6612 14.7324 20.1061 15.2655C20.339 15.5463 20.2504 15.4551 20.4428 15.8267C20.5432 16.0212 20.4428 16.0512 20.3306 16.0512Z" fill="var(--var-color-second)"></path></svg>
									</a>
									<a class="social__item" href="https://t.me/share/url?url=<?php echo rawurlencode($current_url); ?>&text=<?php echo $heading_title; ?>" target="_blank">
										<svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path fill-rule="evenodd" clip-rule="evenodd" d="M17.889 0.218469C17.5016 0.34496 13.5746 1.61289 9.16244 3.03608C4.75026 4.45924 1.01338 5.66843 0.858301 5.72311C0.506774 5.84703 0.262 6.05162 0.115254 6.34422C-0.0321581 6.63812 -0.0390454 7.08335 0.0996791 7.34871C0.213437 7.56624 0.432501 7.79351 0.619593 7.88808C0.699071 7.92828 1.72728 8.37465 2.90446 8.88004C4.08164 9.38542 5.05076 9.80478 5.05807 9.81191C5.06535 9.81908 5.37027 11.1831 5.73565 12.8431C6.10103 14.5031 6.43162 15.9244 6.47029 16.0015C6.62063 16.3016 6.97529 16.3997 7.28408 16.2266C7.37018 16.1784 8.18374 15.5928 9.09196 14.9254L10.7433 13.7118L12.653 15.2421C13.7034 16.0838 14.6484 16.8183 14.7531 16.8744C15.0051 17.0092 15.3478 17.0376 15.6581 16.9493C15.9746 16.8592 16.3366 16.5091 16.4327 16.2003C16.4687 16.0844 17.293 12.6788 18.2643 8.63238C20.2028 0.556748 20.1003 1.05861 19.893 0.659671C19.6825 0.254527 19.3298 0.028945 18.8673 0.00353964C18.6159 -0.0102551 18.5352 0.00748652 17.889 0.218469ZM18.8289 1.24645C18.8139 1.30442 18.0193 4.60961 17.0632 8.59131C16.1072 12.573 15.3164 15.8391 15.306 15.8493C15.2956 15.8595 15.2562 15.8416 15.2184 15.8096C15.1806 15.7775 13.829 14.6945 12.2148 13.4028C10.6006 12.111 9.26587 11.0422 9.24877 11.0276C9.23171 11.0129 10.5964 9.59062 12.2815 7.86685C13.9667 6.14308 15.3849 4.67038 15.4332 4.59416C15.4911 4.503 15.5212 4.39514 15.5213 4.27857C15.5214 4.12756 15.4995 4.07717 15.3721 3.93665C15.2327 3.7828 15.2072 3.77081 14.9906 3.75709L14.7584 3.74238L10.1535 6.24961L5.54864 8.7568L3.35292 7.8165C2.14525 7.29931 1.1716 6.86206 1.1892 6.84481C1.22376 6.81098 18.7148 1.15057 18.803 1.14463C18.8419 1.14203 18.8489 1.16943 18.8289 1.24645ZM11.7647 6.71323C11.7647 6.72196 10.891 7.62295 9.823 8.71538C8.75503 9.80781 7.85733 10.7533 7.8281 10.8166C7.79887 10.8798 7.62231 11.4574 7.43572 12.1002C7.24914 12.743 7.08474 13.2821 7.07038 13.2982C7.04686 13.3246 6.27709 9.91514 6.26973 9.75187C6.26738 9.70013 6.93228 9.32089 9.00591 8.1913C10.5125 7.37059 11.7496 6.69867 11.755 6.69817C11.7603 6.69771 11.7647 6.70445 11.7647 6.71323ZM9.29267 12.551C9.55803 12.7627 9.77479 12.9476 9.77443 12.9619C9.77338 13.0024 8.06798 14.2453 8.05652 14.2139C8.05088 14.1986 8.15282 13.8245 8.28302 13.3826C8.7049 11.9509 8.66988 12.0474 8.74451 12.1104C8.78067 12.141 9.02736 12.3392 9.29267 12.551Z" fill="var(--var-color-second)"></path>
										</svg>
									</a>
								</div>
							</div>
							<div class="article__text">
								<?php echo $description; ?>
							</div>
						</div>
					</main>
					<aside class="article__aside">
						<?php echo $column_right; ?>
						<? if (count($related_blogs) > 0): ?>
						<div class="article__aside-title">Вам понравится</div>
						<div class="article__aside-items">
							<?php foreach($related_blogs as $blog): ?>
								<article class="article__aside-item item-article">
									<img src="<?= $blog['image']; ?>" alt="img">
									<div class="item-article__wrapp">
										<a href="<?= $blog['href']; ?>" class="item-article__title"><?= $blog['title']; ?></a>
										<div class="item-article__text">
											<?= $blog['short_description']; ?>
										</div>
										<a href="<?= $blog['href']; ?>" class="item-article__btn">Читать далее</a>
									</div>
								</article>
							<?php endforeach; ?>
						</div>
						<? endif; ?>
					</aside>
				</div>
			</div>
		</section>
	</div>
	<!-- <div class="article-page__container">
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
		</div> -->
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
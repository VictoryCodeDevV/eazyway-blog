<?php if ($comments) { ?>

<?php foreach ($comments as $comment) { ?>
<div class="comments__comment comment comment--parent">
								<div class="comment__body">
									<div class="comment__top">
										<div class="comment__wrapper">
											<div class="comment__author"><?php echo $comment['name']; ?></div>
											<div class="comment__date"><?php echo $comment['date_added']; ?></div>
										</div>
									</div>
									<div class="comment__content">
									<?php echo $comment['comment']; ?>
									</div>
				
								</div>
</div>
<?php } ?>
<?php } else { ?>
<p><?php echo $text_no_comment; ?></p>
<?php } ?>

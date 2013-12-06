<div class="box latest-blog-posts">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content no-padding" >
		<?php if( !empty($blogs) ) { ?>
		<div class="pavblog-latest clearfix">
			<ul>
			<?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>
				<li>
				<?php if( $blog['thumb']  )  { ?>
				<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>"/></a>
				<?php } ?>
				
					<h2><a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a></h2>
				
					<div class="text"><?php echo substr( $blog['description'],0, 96 );?></div>
				
					<div class="date"><?php echo $blog['created'];?></div>
				</li>
			<?php } ?>
			</ul>
		</div>
		<?php } ?>
	</div>
 </div>



<!-- -->


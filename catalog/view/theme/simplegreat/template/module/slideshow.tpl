<div class="flexslider">
  <ul class="slides">
    <?php foreach ($banners as $banner) { 
    
?>
    <li>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
    </li>

    
    <?php } ?>
  </ul>
</div>

<div class="clear"></div>


<script type="text/javascript"><!--
$(document).ready(function() {
 	
  $('.flexslider').flexslider({
    animation: "fade",
    controlNav: true,
    directionNav: false
  });

     
  
});
--></script>
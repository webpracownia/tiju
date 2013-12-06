<?php $i = 0; ?>
<?php
$this->language->load('module/simplegreat');
$subtitle = $this->language->get('module_bestseller_subheader');
$showmore = $this->language->get('text_showmore');
$product_count = count($products);

if(($this->config->get('simplegreat_productboxsize') == 1))
{
  $product_count_max = 3;
}
elseif(($this->config->get('simplegreat_productboxsize') == 0))
{
  $product_count_max = 4;
}
?>
<div class="box module clearfix">
 <!-- <h2><?php echo $subtitle; ?></h2> -->
  <div class="box-heading module"><?php echo $heading_title; ?></div>
  <div class="clear"></div>
  <div class="box-content">
    <div class="box-product caruofredsel">
      <?php foreach ($products as $product) {
	if(($i == $this->config->get('simplegreat_effects_carousel_limit'))&&($this->config->get('simplegreat_effects_carousel') == 'enable')&&($product_count>$product_count_max)) {
	  echo '<div class="hidethisblock">';
	}
	
	?>
      <!-- box -->
      <div class="box-product-item">

<div class="view-first">

<div class="view-content">
<?php if ($product['thumb']) { ?>
<div class="image">
<? if(($product['special'])&&($this->config->get('simplegreat_status') == '1')&&($this->config->get('layout_product_showsalebadge'))) { ?>
<div class="sale-badge"><?=$this->config->get('layout_product_showsalebadge_title');?></div>
<? } ?>
<?php if ($product['rating']) { ?>
<div class="box-product-rating"><img src="catalog/view/theme/simplegreat/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
<?php } ?>
<a href="<?php echo $product['href']; ?>">
<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
</a>
</div>

<?php
$this->language->load('module/simplegreat');
$catalog_quickview = $this->language->get('catalog_quickview');
?>
<div class="quickLinkBox" style="display:none;"><a id="qv<?php echo $product['product_id']; ?>" class="button" href="<?php echo $product['href']; ?>" onClick="ajaxDialog('index.php?route=product/quickview&product_id=<?php echo $product['product_id']; ?>','quickBuy'); return false;"><?php echo $catalog_quickview;?></a></div>

<? } ?>
<div class="name">
<a title="<?php echo $product['name']; ?>" href="<?php echo $product['href']; ?>">
<?php echo $product['name']; ?>
</a>
</div>

<div class="price clearfix">
<?php if (!$product['special']) { ?>
  <?php echo $product['price']; ?>
  <?php } else { ?>
  <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
  <?php } ?> 
</div>

<div class="box-product-buttons clearfix">
    <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="buttons-cart"><?php echo $button_cart; ?></a>
    <a onclick="addToWishList('<?php echo $product['product_id']; ?>');" class="buttons-wish" title="<?php echo $button_wishlist; ?>"></a>
    <a onclick="addToCompare('<?php echo $product['product_id']; ?>');" class="buttons-compare" title="<?php echo $button_compare; ?>"></a>
</div>

</div>


</div>
</div>
      
    
      <!--/ box-->
     
      <?php
     
      $i++;
      
       if(($i == count($products))&&($this->config->get('simplegreat_effects_carousel') == 'enable')&&($product_count>$product_count_max)) {
	  echo '</div>';
	}
	
      } ?>
    </div>
  </div>
  <?php if(($this->config->get('simplegreat_effects_carousel') == 'enable')&&($product_count>$product_count_max)): ?>
  <div class="show-more-button"><img src="catalog/view/theme/simplegreat/image/show-more.png"/> <?php echo $showmore; ?></div>
  <?php endif; ?>
</div>
<div class="clear"></div>

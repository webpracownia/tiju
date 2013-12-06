<div class="qv-block">
<div id="content">
  <div class="product-info">
    <?php if ($thumb || $images) { ?>
    <div class="left">
      <?php if ($thumb) { ?>
      <div class="image">
	
        <? if(($special)&&($this->config->get('simplegreat_status') == '1')&&($this->config->get('layout_product_showsalebadge'))) { ?>
	    <div class="sale-badge"><?=$this->config->get('layout_product_showsalebadge_title');?></div>
	    <? } ?>
        <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" id="zoom01" <? if(($this->config->get('simplegreat_status') == '1') && ($this->config->get('simplegreat_effects_productimage') == 'zoom')) { echo 'class="cloud-zoom" rel="position:\'right\', adjustX:20, adjustY:0, tint:\'#FFFFFF\', showTitle:false, softFocus:1, smoothMove:5, tintOpacity:0.8"';} else { echo 'rel="prettyPhoto"';} ?>><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
      
      <?php } ?>
      <?php if ($images) { ?>
      <div class="image-additional-wrapper">
        
        <div class="image-additional">
	  <ul class="bxslider">
	  <a style="" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" <? if(($this->config->get('simplegreat_status') == '1') && ($this->config->get('simplegreat_effects_productimage') == 'zoom')) { echo 'rel="useZoom: \'zoom01\', smallImage: \''.$thumb.'\'" class="cloud-zoom-gallery additional-image"';} else { echo 'class="additional-image" rel="prettyPhoto[pp_gal]"';} ?>><img class="fade-image" src="<?php echo $popup_additional; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
          <?php $i = 1; foreach ($images as $image) { ?>
          <a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" <? if(($this->config->get('simplegreat_status') == '1') && ($this->config->get('simplegreat_effects_productimage') == 'zoom')) { echo 'rel="useZoom: \'zoom01\', smallImage: \''.$image['zoom_thumb'].'\'" class="cloud-zoom-gallery additional-image"';} else { echo 'class="additional-image" rel="prettyPhoto[pp_gal]"';} ?>><img class="fade-image" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
          <?php $i++; } ?>
	  </ul>
        </div>
      </div>
      <?php } ?>
    </div>
    <?php } ?>
    
    <div class="right">
      <h1><?php echo $heading_title; ?></h1>

  <div class="right-rating" onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?> <img align="absmiddle" class="fade-image" src="catalog/view/theme/simplegreat/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" /></div>
      <div class="line"></div>
      
      <!-- price -->
      <?php if ($price) { ?>
      <div class="price">
        <?php if (!$special) { ?>
        <div class="price-original"><?php echo $price; ?></div>
        <?php } else { ?>
        <div class="price-new"><?php echo $special; ?></div>
	<div class="price-old"><?php echo $price; ?></div> 
        <?php } ?>
        
        <?php if ($tax) { ?>
        <div class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></div>
        <?php } ?>
        <?php if ($points) { ?>
        <div class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></div>
        <?php } ?>
        <?php if ($discounts) { ?>
        
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <!-- / price -->
      <div class="product-buttons">
      <div class="input-qty clearfix"><span><?php echo $text_qty; ?></span><div class="qty-minus">-</div><div class="qty-input-div"><input id="qty-input" type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
	  <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" /></div><div class="qty-plus">+</div>
      </div>
      
      <div class="clear"></div>
      <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
      <?php } ?>
      <?php
      $this->language->load('module/simplegreat');
      $more_details = $this->language->get('catalog_quickview_details');

      $product_page_url = 'index.php?route=product/product&product_id='.$product_id;
      ?>
      <div class="box-product-buttons clearfix">
	  <a id="button-cart" class="buttons-cart"><?php echo $button_cart; ?></a>
      </div>
      <div class="more-details"><a href="<?php echo $product_page_url; ?>" class="button"><?php echo $more_details; ?></a></div>
      </div>
      <!-- description -->
      <div class="description">
        
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
  
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?>
      </div>
      <!-- /  description -->
      <div class="line"></div>
      <div class="qv-description"><?php echo $description; ?></div>
      <!-- /  options -->
      <?php if ($options) { ?>
      <div class="options">
        <h2><?php echo $text_option; ?></h2>
       
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          
          <?php } ?>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
         
          <b> <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5"><?php echo $option['option_value']; ?></textarea>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
         
          <b> <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          
          <b><?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
         
          <b> <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?><?php echo $option['name']; ?>:</b>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        
        <?php } ?>
        <?php } ?>
      </div>
      <?php } ?>
      <!-- /  options -->  
	  
         <div class="clear"></div>
    </div>
    
  </div>
  
  
  
  
 </div>
<script type="text/javascript"><!--
 $("a[rel^='prettyPhoto']").prettyPhoto();
//--></script> 
<script type="text/javascript"><!--
$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {                 $('#dialog').dialog("close");                                  ajaxLoading();                                  setTimeout(function(){                 $('#loadingdialog').dialog("close");                 $.colorbox.close();                                  $('#cart-total').html(json['total']);                 minicartDetailPopup();                 $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');                 $('.success').fadeIn('slow');                 $('html, body').animate({ scrollTop: 0 }, 'slow');                  }, 1500);                                   setTimeout(function(){$('.success').fadeOut('slow');},10000); }  
		}
	});
});
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#qty-input').val(<?php echo $minimum; ?>);

$('.product-info .input-qty .qty-minus').bind('click', function() {
	if($(this).next().children().val()>1) {
	  
	  $(this).next().children().val(parseInt($(this).next().children().val())-1);
	}
});

$('.product-info .input-qty .qty-plus').bind('click', function() {
	$(this).prev().children().val(parseInt($(this).prev().children().val())+1);
	
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('#tabs a').tabs();
//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.qv-block .date, .qv-block .datetime, .qv-block .time').bgIframe();
}

$('.qv-block .date').datepicker({dateFormat: 'yy-mm-dd'});
$('.qv-block .datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.qv-block .time').timepicker({timeFormat: 'h:m'});


$(document).ready(function(){

	$('#zoom01, .cloud-zoom-gallery').CloudZoom();
	 
	$("#zoom01").live('click', function(event) {
	 
		event.preventDefault();

    });
 });  
//--></script>
</div>

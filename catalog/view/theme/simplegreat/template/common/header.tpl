<?php

$is_homepage = false;

if(!isset($this->request->get['route'])) {
      $this->request->get['route'] = 'common/home';
}
if ($this->request->get['route'] == 'common/home') {

      $is_homepage = true;
}
?>
<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<meta name="viewport" content="width=device-width; initial-scale=1.0">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php if(($this->config->get('simplegreat_status') != '1')||($this->config->get('simplegreat_header_font')=='Open Sans')) {?>
<link href='//fonts.googleapis.com/css?family=Open Sans::400,700,300&subset=cyrillic' rel='stylesheet' type='text/css'>
<? }?>
<?php if(($this->config->get('simplegreat_status') == '1')&&( $this->config->get('simplegreat_header_font') != 'Trebuchet MS')){	
?>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('simplegreat_header_font') ?>:<?php echo $this->config->get('simplegreat_header_font_weight') ?>,700&subset=<?php echo $this->config->get('simplegreat_header_font_subset') ?>' rel='stylesheet' type='text/css'>
<?php } ?>
<?php if(($this->config->get('simplegreat_status') == '1')&&( $this->config->get('simplegreat_buttons_font') != 'Trebuchet MS')){	
?>
<link href='//fonts.googleapis.com/css?family=<?php echo $this->config->get('simplegreat_buttons_font') ?>:<?php echo $this->config->get('simplegreat_buttons_font_weight') ?>&subset=<?php echo $this->config->get('simplegreat_buttons_font_subset') ?>' rel='stylesheet' type='text/css'>
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/stylesheet.css" />
<?php if(($this->config->get('simplegreat_status') == '1')&&( $this->config->get('simplegreat_effects_css') == 1)) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/animations.css" />
<?php } ?>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/flexslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/jquery.bxslider.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/prettyPhoto.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/selectbox.css" />

<?php if(($this->config->get('simplegreat_status') == '1')&&( $this->config->get('simplegreat_layout_responsive') == 1)) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/responsive.css" />
<?php } ?>

<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.ba-throttle-debounce.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.touchSwipe.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.mousewheel.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/cloud-zoom.1.0.3.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/jquery.selectbox.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/skrollr.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/quickview.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/twitter/jquery.tweet.js"></script>

<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!-- Live search -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/livesearch.css" />
<script src="catalog/view/javascript/jquery/livesearch.js"></script>
<!-- Live search END -->
<?
      if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_slider_enable') == '1')):
?>
<!-- REVOLUTION -->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/rs-plugin/revolution-css/fullwidth.css" media="screen"/>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/simplegreat/stylesheet/rs-plugin/css/settings.css" media="screen" />
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/revolution/jquery.themepunch.plugins.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/simplegreat/js/revolution/jquery.themepunch.revolution.js"></script>
<? endif; ?>
<!--[if IE 7]>

<![endif]-->
<!--[if lt IE 7]>

<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->

<?
      if($this->config->get('layout_product_livepriceupdate') == '1'):
?>
<script type="text/javascript">
$(document).ready(function() {
   $('.option').change(function() {
   var OriginalPrice = $('#thisIsOriginal').text();
   var OriginalCurrency = OriginalPrice.match(/\D*/g)[0];
   OriginalPrice = OriginalPrice.replace(/[^\d|.]/g, "");
      
   var newPriceValue = $('.option :selected').text();
 
   
   var iChars = "$";
   if(newPriceValue.match(/\d+\./g) != null){

      
   
var position1 = newPriceValue.indexOf("(");
   var position2 = newPriceValue.indexOf(")");
   position1 = position1+3;
   var finalPriceValue = newPriceValue.substring(position1, position2);
   var txt = newPriceValue;
    

txt = txt.replace(/,/g, '');

array=txt.match(/(?!$)\d+(\.\d+)/g);

var total = 0;
for (var ii = 0; ii < array.length; ii++) {
 total += array[ii];
 }
 
 if(1 < array.length)
{

 var newtotalfinal = eval(array.join('+'));



if(newPriceValue.match(/\d+\./g)== null)
   {
   newtotalfinal = "0";

   }
OriginalPrice = Number(OriginalPrice);
newtotalfinal = Number(newtotalfinal);

newtotalfinal = newtotalfinal + OriginalPrice
   newtotalfinal = newtotalfinal.toFixed(2);
   newtotalfinal = newtotalfinal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   $('#priceUpdate').text(OriginalCurrency + newtotalfinal);
} else
{

   if(newPriceValue.match(/\d+\./g)== null)
   {
   finalPriceValue = "0";

   }
   finalPriceValue = parseFloat(finalPriceValue.replace(",", "")) + parseFloat(OriginalPrice.replace(",", ""));
   finalPriceValue = finalPriceValue.toFixed(2);
      newtotalfinal = finalPriceValue.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
   $('#priceUpdate').text(OriginalCurrency + newtotalfinal);
}

   }
   
   else {

    var finalPriceValue = "0";
   OriginalPrice = OriginalPrice.replace(",","");
   OriginalPrice = Number(OriginalPrice);
   newtotalfinal = Number(finalPriceValue);
   newtotalfinal = newtotalfinal + OriginalPrice;
      newtotalfinal = newtotalfinal.toFixed(2);

   newtotalfinal = newtotalfinal.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     $('#priceUpdate').text(OriginalCurrency + newtotalfinal);
   
   }
 

 });
});
</script>
<?php endif; ?>
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>

<?php echo $google_analytics; ?>


<script type="text/javascript">
<?php if($this->config->get('simplegreat_layout_fixedmenu') == '1') { ?>

window.onload = function() {
		skrollr.init({
			forceHeight: false
		});
	}
	
<?php } ?>	
$(document).ready(function() {

<?
      if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_slider_enable') == '1')):
?>
if ($.fn.cssOriginal!=undefined)
	$.fn.css = $.fn.cssOriginal;

	$('.fullwidthbanner').revolution(
		{
			delay:<? echo $this->config->get('simplegreat_slider_autoplay_delay'); ?>,
			startwidth:980,
			startheight:480,

			onHoverStop:"on",						// Stop Banner Timet at Hover on Slide on/off

			thumbWidth:100,							// Thumb With and Height and Amount (only if navigation Tyope set to thumb !)
			thumbHeight:50,
			thumbAmount:3,

			hideThumbs:0,
			navigationType:"bullet",				// bullet, thumb, none
			navigationArrows:"solo",				// nexttobullets, solo (old name verticalcentered), none

			navigationStyle:"round",				// round,square,navbar,round-old,square-old,navbar-old, or any from the list in the docu (choose between 50+ different item), custom


			navigationHAlign:"center",				// Vertical Align top,center,bottom
			navigationVAlign:"bottom",					// Horizontal Align left,center,right
			navigationHOffset:0,
			navigationVOffset:20,

			soloArrowLeftHalign:"left",
			soloArrowLeftValign:"center",
			soloArrowLeftHOffset:40,
			soloArrowLeftVOffset:10,

			soloArrowRightHalign:"right",
			soloArrowRightValign:"center",
			soloArrowRightHOffset:40,
			soloArrowRightVOffset:10,

			touchenabled:"on",						// Enable Swipe Function : on/off


			stopAtSlide:<? if($this->config->get('simplegreat_slider_autoplay') == 1) { echo '-1'; } else { echo '1'; } ?>,			// Stop Timer if Slide "x" has been Reached. If stopAfterLoops set to 0, then it stops already in the first Loop at slide X which defined. -1 means do not stop at any slide. stopAfterLoops has no sinn in this case.
			stopAfterLoops:0,						// Stop Timer if All slides has been played "x" times. IT will stop at THe slide which is defined via stopAtSlide:x, if set to -1 slide never stop automatic

			hideCaptionAtLimit:0,					// It Defines if a caption should be shown under a Screen Resolution ( Basod on The Width of Browser)
			hideAllCaptionAtLilmit:0,				// Hide all The Captions if Width of Browser is less then this value
			hideSliderAtLimit:0,					// Hide the whole slider, and stop also functions if Width of Browser is less than this value


			fullWidth:"on",

			shadow:0								//0 = no Shadow, 1,2,3 = 3 Different Art of Shadows -  (No Shadow in Fullwidth Version !)

		});
<? endif; ?>

});
</script>

<script type="text/javascript"><!--

$(document).ready(function() {

      // Show blog posts in News
      <?
     
      if($this->config->get('simplegreat_layout_bloginabout') == 1)
      {
      
      echo "$('.shop-about-news ul').html($('.pavblog-latest ul').html())";
      
      }
      else
      {
      echo "$('#content .box.latest-blog-posts').show();";
      }
      ?>
      
      $('.breadcrumb').prependTo($('.container')).slideDown();
       
      // Fullwidth layout
      
      <?
      if(($this->config->get('simplegreat_fullwidthslider') == '1')):
      ?>
      $('.fullwidthbanner-container').insertBefore('.wrapper').show();
      <? endif; ?>
       
      $('.product-filter select').selectbox();
    
      <?
      if(($this->config->get('simplegreat_status') == '1'))
      {
	echo html_entity_decode($this->config->get('simplegreat_custom_js'));
      }
      ?>

      // Image animation
      $(".fade-image").live({
        mouseenter:
           function()
           {
				$(this).stop().fadeTo(300, 0.6);
           },
        mouseleave:
           function()
           {
				$(this).stop().fadeTo(300, 1);
           }
       }
    );
      
      $('#scroll_to_top').click(function(e) {
                $('html, body').animate({scrollTop:0}, 'slow');
                return false;
        });
      
      $(".show-more-button").live('click', function(event) {
	 
	    event.preventDefault();
	    
	    var i = 0;
	    
	    var parent_container = $(this).parent();
	    
	    
	    parent_container.find($('.hidethisblock .box-product-item')).each(function(){
	      if(i < 4) {
		    $(this).hide().appendTo(parent_container.find($('.caruofredsel'))).slideDown();
		    
	      }
	      i++;
	      
	    });
	    
	    
	    $('html, body').delay(500).animate({
		    scrollTop: parent_container.find($('.caruofredsel .box-product-item')).last().offset().top
		    
		}, 500);
	    
	    
			   
	    if(parent_container.find($('.hidethisblock .box-product-item')).length == 0) {
	      $(this).fadeOut();
	    }
	      
      });
      
       $(".box-category div.menuopen").live('click', function(event) {
	 
		event.preventDefault();
		
		$('.box-category a + ul').slideUp();
		$('+ a + ul', this).slideDown();
		
		$('.box-category ul li div.menuclose').removeClass("menuclose").addClass("menuopen");
		$(this).removeClass("menuopen").addClass("menuclose");
		
		$('.box-category ul li a.active').removeClass("active");
		$('+ a', this).addClass("active");
	});
       
       var mobilemenuOpened = false;
       
       $(".mobile-menu-toggle").live('click', function(event) {

	    if(mobilemenuOpened == false)
	    {
		  $(".mobile-menu").slideDown();
		  
		  mobilemenuOpened = true;
	    }
	    else
	    {
		  $(".mobile-menu").slideUp();
		  
		  mobilemenuOpened = false;
	    }
	});

   
});

--></script>

<script type="text/javascript"><!--
$(document).ready(function() {
      
      $('.shop-about-news .bxslider').bxSlider({
	    mode: 'vertical',
	    pager: false
      });
      
      $('.shop-about-slider .bxslider').bxSlider({
	    mode: 'horizontal',
	    auto: true,
	    controls: false
      });
      
});

--></script>


<style type="text/css">
<?php if($this->config->get('simplegreat_layout_brandsmenu') != 1) {
      
?>
.brands-menu {
      display:none!important;
}
<?
}
?>
<?php if (( ($this->config->get('facebook_float_position') == 'right') && ($this->config->get('customblock_float_position') == 'left') ) || ( ($this->config->get('facebook_float_position') == 'left') && ($this->config->get('customblock_float_position') == 'right') ) ) { ?>
.widget_custom_box_left, .widget_custom_box_right {
      top: 230px;
}
<? } ?>
<?
if(($this->config->get('simplegreat_fullwidthslider') == '1')):
?>
.fullwidthbanner-container {
    width: 100%;
}
<? endif; ?>
</style>

<style type="text/css">
      
      <?
      if(($this->config->get('simplegreat_status') == '1'))
      {
	echo html_entity_decode($this->config->get('simplegreat_custom_css'));
      }
      ?>
      <?php if(($this->config->get('simplegreat_status') == '1')&&( $this->config->get('simplegreat_layout_catalogmode') == 1)) { ?>
      .menu-link-checkout, .header-cart-wrapper, .buttons-cart {
      display:none!important;
     }
     .product-info > .left + .right .box-product-buttons a:not(.buttons-cart) {
            margin-left: 0px;
            margin-right: 2px;
        }
      <?php } ?>
      <?
      if(($this->config->get('simplegreat_layout_quickview') == 0))
      {
	echo '.box-product-item:hover .quickLinkBox {
	display:none!important;
}';
      }
      ?>
      <?
      if(($this->config->get('simplegreat_productboxsize') == 1))
      {
	?>
        .box-product-item {
            width: 294px;
        }
        .box-product .quickLinkBox {
            margin-left: 97px;
        }
        .product-list .quickLinkBox {
            margin-left: 59px;
        }
        .buttons-cart {
            width: 156px;
        }
        .product-grid .box-product-item {
            width: 333px;
        }
        .product-grid .quickLinkBox {
            margin-left: 116px;
        }
        .product-grid .buttons-cart {
            width: 194px;
        }
        
        #tab-related .box-product-item {
            width: 333px;
        }
        #tab-related .quickLinkBox {
            margin-left: 116px;
        }
        #tab-related .buttons-cart {
            width: 194px;
        }
        <?
      }
      ?>
      /* backgrounds */
      body {
	background-color: #<?php echo $this->config->get('simplegreat_color_body_bg') ?>;
      }
      
      <?php 
      if ($this->config->get('dx_bg_image') == '1') {
      ?>
      body{
	background-image:url("<?php echo 'image/' . $this->config->get('dx_image') ?>");
      } 	
      <?php   }
	else if ($this->config->get('simplegreat_body_bg_pattern')!= "no_pattern") { 
      ?>
      body {
	background-image:url("catalog/view/theme/simplegreat/image/bg/<?php echo $this->config->get('simplegreat_body_bg_pattern');?>.png");
      }
      <?php } ?>
	
	
      <?php 
      if ($this->config->get('dx_full_bg_image') == '1') {
      ?>
      body {
	background:#<?php echo $this->config->get('simplegreat_color_body_bg') ?> url("<?php echo 'image/' . $this->config->get('dx_full_image') ?>") no-repeat fixed center top;
      } 	
      <?php   } ?>
      

      /* font size */
      body {
	font-size:<?php echo $this->config->get('simplegreat_buttons_fontsize') ?>px;
      }
      
      /* font family */
      body, #search input {
	font-family:<?php echo $this->config->get('simplegreat_buttons_font') ?>;
      }
            
      h1, h2, h3, h4, h5, .promo-block .promo-box h1, .promo-block .promo-box h2, .box.module h2, .box.module h1, .shop-about h2, .shop-about h1, .shop-about .shop-about-news li h2 a, .shop-newsletter .subscribe-logo, .shop-newsletter .subscribe-form label, #footer h3, .category-info .category-description h2, #column-left .box .box-heading, #column-right .box .box-heading, .product-info h1, #menu > ul > li > a, .box .box-heading, .shop-newsletter .subscribe-form input.button, .box-category > ul > li > a {
	font-family:"<?php echo $this->config->get('simplegreat_header_font') ?>";
	
	<?
	$header_font_weight = str_replace("italic","",$this->config->get('simplegreat_header_font_weight'));
	if(strlen($header_font_weight) < strlen($this->config->get('simplegreat_header_font_weight')))
	{
	  echo 'font-style: italic';
	}
	?>

	text-transform: <?php echo $this->config->get('simplegreat_fonts_transform') ?>;
      }
      /* bg */
      #comment-form input, #comment-form textarea, input[type="text"], input[type="password"], textarea, select, #search .search-btn, .shop-newsletter .subscribe-form input.email {
            background-color:#<?=$this->config->get('simplegreat_input_bg')?>;
      }
      
      #header #cart .icon:hover, #header #cart .heading, .widget_custom_box_left #custom_box_icon, .show-more-button, .box-product-buttons a:not(.buttons-cart), .bx-wrapper .bx-next:hover, .bx-wrapper .bx-prev:hover, .shop-about .shop-about-text a.more:hover, a.button, input.button, .buttons-cart:hover, .footer-social a:hover, .product-filter, .box-category .menuopen:hover,.box-category .menuclose:hover, .bx-wrapper .bx-next:hover, .bx-wrapper .bx-prev:hover, .product-info .zoom a:hover, .social-share .image:hover, .htabs.vert a:not(.selected):hover:hover, #header #cart .checkout a, #scroll_to_top:hover,.input-qty .qty-minus:hover, .product-info .input-qty .qty-plus:hover {
	    background-color:#<?=$this->config->get('simplegreat_button_bg')?>;
      }
      
      .htabs.vert a, .pagination .links a:hover, .buttons-cart, #header #cart .icon, #header #cart .checkout a:hover, .box-product-buttons a:hover:not(.buttons-cart), .show-more-button:hover, a.button:hover, input.button:hover, .footer-social a, .product-info .input-qty .qty-minus, .product-info .input-qty .qty-plus, .product-info .input-qty input, .htabs.vert a, #menu > ul > li:hover {
	    background-color:#<?=$this->config->get('simplegreat_button_hoverbg')?>;
      }
      
      .mini-cart-info td, .mini-cart-info .name small, .mini-cart-total td, body, .htabs.vert .selected:hover, .pavblog-latest .text, #header #cart .content, #cboxContent, #twitter_update_list, .shop-about .shop-about-news .text, .product-info .description, .product-info .price-tax, .product-info .price .discount, .product-info .options, .htabs.vert .selected {
	    color:#<?=$this->config->get('simplegreat_color_body_color')?>;
      }
      
      .menu-wrapper, .mobile-menu-toggle {
	    background-color:#<?=$this->config->get('simplegreat_topmenu_bg')?>;
      }
      
      #menu > ul > li div, .mobile-menu-toggle:hover {
            background-color:#<?=$this->config->get('simplegreat_topmenu_2lvl_bg')?>;
      }
      
      #menu > ul > li div div {
            background-color:#<?=$this->config->get('simplegreat_topmenu_3lvl_bg')?>;
      }
      
      #footer-container {
            background-color:#<?=$this->config->get('simplegreat_footer_bg')?>;
      }
      
      #c_switcher, #l_switcher, .header-menu-wrapper {
            background-color:#<?=$this->config->get('simplegreat_header_menu_bg')?>;
      }
      
      #header {
            background-color:#<?=$this->config->get('simplegreat_header_bg')?>;
      }
      
      #livesearch_search_results, .mobile-menu .box-content, .comment-wrap, .htabs.vert .selected, #cboxContent, .widget_custom_box_left .custom_box, .widget_custom_box_right .custom_box, .container, .shop-newsletter, .promo-block, #content .box, .shop-about, .htabs.vert a:hover:not(.selected), #header #cart .content, #content .content, .cart-info {
            background-color: #<?=$this->config->get('simplegreat_color_contentbg')?>;
      }
      
      .comment-link, .bx-wrapper .bx-prev, .bx-wrapper .bx-next, #scroll_to_top, .tp-rightarrow.default, .tp-leftarrow.default, .box-category .menuclose, .box-category .menuopen, .product-info .zoom a, .pagination .links b, .social-share .image {
            background-color: #<?=$this->config->get('simplegreat_color_navbuttonsbg')?>;
      }
      
      .box-product-item {
            background-color:#<?=$this->config->get('simplegreat_boxproduct_bg')?>;
      }
      
      .box-product-item .image, .product-info .image {
            background-color:#<?=$this->config->get('simplegreat_boxproductimage_bg')?>;
      }
      
      .promo-block .promo-box {
            background-color:#<?=$this->config->get('simplegreat_promobox_bg')?>;
      }
      
      .qv-description {
            background-color:#<?=$this->config->get('simplegreat_color_quickviewdescrbg')?>;
      }
      
      .custom-footer-contact .contact-icon {
            background-color:#<?=$this->config->get('simplegreat_color_iconsbg')?>;
      }
      
      .shop-about .shop-about-text .text {
            background-color:#<?=$this->config->get('simplegreat_aboutus_bg')?>;
      }
      
      .category-info .category-description {
            background-color:#<?=$this->config->get('simplegreat_category_box')?>;
      }
      
      #menu > ul > li:hover > a {
            background-color:#<?=$this->config->get('simplegreat_topmenu_2lvl_bg')?>;
      }
      
      .manufacturer-heading, .attribute thead td, .attribute thead tr td:first-child, .wishlist-info thead td, table.list thead td {
            background-color:#<?=$this->config->get('simplegreat_main_border')?>;
      }
      
      .product-info .line {
            background-color:#<?=$this->config->get('simplegreat_color_body_color')?>;
      }
      /* colors */
      
      #twitter_update_list li .created a, .shop-about .shop-about-news .date {
            color: #<?=$this->config->get('simplegreat_color_date')?>;
      }
      
      .box-category > ul > li > a, .box-category > ul > li ul > li > a, #pav-categorymenu li a, .mobile-menu-toggle {
            color: #<?=$this->config->get('simplegreat_category_link')?>;
      }
      
      .category-info .category-description, .category-info .category-description a, .category-info .category-description h2 {
            color: #<?=$this->config->get('simplegreat_category_text')?>;
      }
      
      #comment-form input, #comment-form textarea, input[type="text"], input[type="password"], textarea, select, #search .search-btn, .shop-newsletter .subscribe-form input.email {
            color: #<?=$this->config->get('simplegreat_input_text')?>;
      }
      #header #cart .heading a, .buttons-cart, .show-more-button, a.button, input.button, .product-filter, .product-filter .display a:last-child, .htabs.vert a, .htabs.vert a:hover {
            color: #<?=$this->config->get('simplegreat_button_link')?>;
      }
      
      .shop-about .shop-about-news li h2 a, .pavblog-latest li h2 a {
            color: #<?=$this->config->get('simplegreat_news_title')?>;
      }
      
      .shop-about .shop-about-text .text {
            color: #<?=$this->config->get('simplegreat_aboutus_text')?>;
      }
      
      .box-product-item .name a, .product-list .box-product-item .name a, .refine-search li a, .product-info .right-product-sidebar .related-sidebar .name a {
            color: #<?=$this->config->get('simplegreat_productname')?>;
      }
      
      .box-product-item .price, .product-info .price-original, .product-info .right-product-sidebar .related-sidebar .price {
            color: #<?=$this->config->get('simplegreat_regularprice')?>;
      }
      
      .box-product-item .price-old, .product-info .price .price-old, .product-info .price .price-old {
            color: #<?=$this->config->get('simplegreat_oldprice')?>;
      }
      
      .box-product-item .price-new, .product-info .right-product-sidebar .related-sidebar .price-new, .product-info .price-new {
            color: #<?=$this->config->get('simplegreat_newprice')?>;
      }
      
      #menu > ul > li > a {
            color: #<?=$this->config->get('simplegreat_topmenu_link')?>;
      }
      
      .footer {
            color: #<?=$this->config->get('simplegreat_color_powered')?>;
      }
      
      #menu > ul > li > a:hover, #menu .li-blog a {
            color: #<?=$this->config->get('simplegreat_topmenu_linkhover')?>;
      }
      
      #menu > ul > li ul > li > a {
            color: #<?=$this->config->get('simplegreat_topmenu2_link')?>;
      }
      
      #menu > ul > li ul > li > a:hover {
            color: #<?=$this->config->get('simplegreat_topmenu2_linkhover')?>;
      }
      
      #currency a, .c_selected, .l_selected, #language a {
            color: #<?=$this->config->get('simplegreat_currencylang')?>;
      }
      
      .box .box-heading, h1, h2, h3, h4, .box-filter span, .product-info h1, .promo-block .promo-box h1, #footer h3, .shop-newsletter .subscribe-logo, .shop-newsletter .subscribe-form, .shop-about h1, .product-info .right-product-sidebar .related-sidebar h2 {
            color: #<?=$this->config->get('simplegreat_color_header')?>;
      }
      #footer h3 {
            color: #<?=$this->config->get('simplegreat_color_footerheader')?>;
      }
      
      .box.module h2, .promo-block .promo-box h2, .shop-about h2 {
            color: #<?=$this->config->get('simplegreat_color_modulesubheader')?>;
      }
      
      #footer .column a, #footer .column {
            color: #<?=$this->config->get('simplegreat_color_footerlinks')?>;
      }
      
      #footer .column a:hover {
            color: #<?=$this->config->get('simplegreat_color_footerlinkshover')?>;
      }
      
      .pavblog-comments .comment-author, .product-info .right-rating {
            color: #<?=$this->config->get('simplegreat_button_bg')?>;
      }
      
      a, a b, #menu .li-blog a, #pav-categorymenu li a:hover, .shop-about .shop-about-news li h2 a:hover, .refine-search li a + a:hover, .box-category > ul > li ul > li > a:hover, .box-category > ul > li > a:hover, .box-product-item .name a:hover, .pavblog-comments .comment-author, .product-info .right-rating {
            color: #<?=$this->config->get('simplegreat_color_link')?>;
      }
      
      a:hover, .pavblog-comments .comment-author, .product-info .right-rating:hover {
            color: #<?=$this->config->get('simplegreat_color_linkhover')?>;
      }
      
      .shop-about .shop-about-text a.more {
            color: #<?=$this->config->get('simplegreat_aboutus_text')?>;
      }
      
      .header-menu a {
            color: #<?=$this->config->get('simplegreat_header_menu_link')?>;
      }
      
      .header-menu a:hover {
            color: #<?=$this->config->get('simplegreat_header_menu_linkhover')?>;
      }      
      
      .none-classes {
            color: #<?=$this->config->get('simplegreat_button_hoverbg')?>;
      }
      
      /* borders */
      .htabs.vert a {
            border-color: #<?=$this->config->get('simplegreat_button_hoverbg')?>;
      }
      
      .product-info .zoom a {
            border-color: #<?=$this->config->get('simplegreat_color_body_color')?>;
      }
      
      .category-info .category-description h2 {
            border-color: #<?=$this->config->get('simplegreat_category_text')?>;
      }
      
      #livesearch_search_results, #livesearch_search_results li + li, .mobile-menu-toggle, .mobile-menu .box-content, .manufacturer-list, .comment-wrap .comment-meta, .comment-wrap, .comment-link, .blog-meta > span, .blog-meta, table.list, table.list td, .wishlist-info thead td, .wishlist-info tbody td, .wishlist-info table, .attribute thead td, .attribute thead tr td:first-child, .review-list, #column-left .box .box-heading, #column-right .box .box-heading, .breadcrumb, .buttons, .footer-wrapper, .pagination, #column-left .box, #column-right .box, .product-info .right-product-sidebar .related-sidebar, .product-info .right-product-sidebar .related-sidebar h2, .social-share, .hcontent.vert, .htabs.vert .selected {
            border-color: #<?=$this->config->get('simplegreat_main_border')?>;
      }
      .box-product-item {
            border-color: #<?=$this->config->get('simplegreat_boxproduct_bg')?>;
      }
      h1 {
            border-color: #<?=$this->config->get('simplegreat_header_border')?>;
      }
      
      #comment-form input, #comment-form textarea, input[type="text"], input[type="password"], textarea, select, #search .search-btn, .shop-newsletter .subscribe-form input.email {
            border-color: #<?=$this->config->get('simplegreat_input_border')?>;
      }
      
      .box-product-item .image, .box-product-item:hover, .refine-search li, .refine-search li img {
            border-color: #<?=$this->config->get('simplegreat_boxproduct_border')?>;
      }
      
      .header-menu a {
            border-color: #<?=$this->config->get('simplegreat_header_menu_linkborder')?>;
      }
      
      .shop-about .shop-about-text a.more {
            border-color: #<?=$this->config->get('simplegreat_aboutus_text')?>;
      }
      .menu-wrapper {
            border-color:#<?=$this->config->get('simplegreat_topmenu_border')?>;
      }
      .htabs.vert a:not(.selected):hover, #header #cart .content, .widget_custom_box_left .custom_box {
	    border-color:#<?=$this->config->get('simplegreat_button_bg')?>;
      }
      .htabs.vert a {
            border-color:#<?=$this->config->get('simplegreat_button_hoverbg')?>;
      }
      
      /* Custom block */
      
      #menu .custom-topmenu-block {
	width:<?=$this->config->get('simplegreat_layout_custommenu_block_width')?>px;
	
      }
      
      .sale-badge {
	    background-color:#<?=$this->config->get('layout_product_showsalebadge_color')?>;
      }
      
      
      <?
      $simplegreat_effects_carousel = $this->config->get('simplegreat_effects_carousel');

      if($simplegreat_effects_carousel !== 'enable')
      {
	?>
	.navigate  {
		display:none;
	  
	}
	.caruofredsel {
		height:auto;
	}
	.caruofredsel .box-product-item {
		margin-bottom:10px;
	}
	<?
      }
      ?>
      
     

</style> 

</head>
<body>

<?php if(($this->config->get('facebook_id')) && (($this->config->get('facebook_id'))<>'') &&($this->config->get('facebook_status') == 1)): ?>
<div class="widget_facebook_<?php if($this->config->get('facebook_float_position')) { echo $this->config->get('facebook_float_position');} else { echo 'right'; } ?>">
<div id="facebook_icon"></div>
<div class="facebook_box">
  <script src="//connect.facebook.net/en_US/all.js#xfbml=1"></script>
  <fb:fan profile_id="<?php echo $this->config->get('facebook_id'); ?>" stream="0" connections="16" logobar="0" width="237" height="389"></fb:fan>  
  <script type="text/javascript">    
  $(function(){        
        $(".widget_facebook_right").hover(function(){            
        $(".widget_facebook_right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".widget_facebook_right").stop(true, false).animate({right: "-245" }, 800, 'easeInQuint' );        
        },1000);    
  });
  $(function(){        
        $(".widget_facebook_left").hover(function(){            
        $(".widget_facebook_left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".widget_facebook_left").stop(true, false).animate({left: "-245" }, 800, 'easeInQuint' );        
        },1000);    
  });  
  </script>
</div>
</div>
<?php endif; ?>

<?php if(($this->config->get('customblock_float_content')) && ($this->config->get('customblock_float_content'))<>''): ?>
<div class="widget_custom_box_<?php if($this->config->get('customblock_float_position')) { echo $this->config->get('customblock_float_position');} else { echo 'right'; } ?>">
<div id="custom_box_icon"></div>
<div class="custom_box">

<?php echo html_entity_decode($this->config->get('customblock_float_content')); ?>

  <script type="text/javascript">    
  $(function(){        
        $(".widget_custom_box_right").hover(function(){            
        $(".widget_custom_box_right").stop(true, false).animate({right: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".widget_custom_box_right").stop(true, false).animate({right: "-245" }, 800, 'easeInQuint' );      
        },1000);    
  });
  $(function(){        
        $(".widget_custom_box_left").hover(function(){            
        $(".widget_custom_box_left").stop(true, false).animate({left: "0" }, 800, 'easeOutQuint' );        
        },
  function(){            
        $(".widget_custom_box_left").stop(true, false).animate({left: "-245" }, 800, 'easeInQuint' );        
        },1000);    
  });  
  </script>
</div>
</div>
<?php endif; ?>

<div class="header-forms-wrapper">
      <div class="header-forms">
		  <div class="form-currency"><?php echo $currency; ?></div>
		  <div class="form-language"><?php echo $language; ?></div>
      </div>
</div>
<div id="header">
<div class="header-menu-wrapper clearfix" data-0="position:static;" data-290="position:fixed;" id="nav">
      <div class="header-menu"><a class="menu-link-home" href="<?php echo $home; ?>"><?php echo $text_home; ?></a><a href="<?php echo $account; ?>" class="menu-link-account"><?php echo $text_account; ?></a><a class="menu-link-wishlist" href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a><a class="menu-link-checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
     
      </div>
      <div class="header-cart-wrapper">
      
      <?php echo $cart; ?>
      </div>
</div>

<!--placeholder div to prevent jumpy content when nav gets pinned-->
<div style="padding:1em;display:none;" data-top-top="display:none;" data-290="display:block;" data-anchor-target="#nav">&nbsp;</div>

<div class="header-logo-wrapper">
  <?php if ($logo) { ?>
  <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a>
  <?php } ?>
</div>
<div class="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
</div>

</div>
<!-- // header -->


<div class="header-search-wrapper">
   <div id="search">
    <button type="submit" title="Go" class="search-btn button-search"><span>Go</span></button>
    <input type="text" name="search" value="<?php echo $text_search; ?>" onclick="this.value = ''" onblur ="if(this.value=='') { this.value = '<?php echo $text_search; ?>'}"; />
     
   </div> 
</div>
   

<div class="menu-wrapper">
<?
// custom menu show instead
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu') == 1)&&($this->config->get('simplegreat_layout_custommenu_position') == 0))
{
?>
<div id="menu" class="clearfix">
      <?
  // custom block
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_block') == 1)&&($this->config->get('simplegreat_layout_custommenu_block_position') == 0))
{

if($this->config->get('simplegreat_layout_custommenu_block_title')<>'') echo '<li class="li-custom-block"><a>'.$this->config->get('simplegreat_layout_custommenu_block_title').'</a><div class="custom-topmenu-block"><ul><li>'.html_entity_decode($this->config->get('simplegreat_layout_custommenu_block_content')).'</li></ul></div></li>';

}
    ?>
  <ul>
<?
if($this->config->get('simplegreat_layout_custommenu_item1_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item1_url').'">'.$this->config->get('simplegreat_layout_custommenu_item1_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item2_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item2_url').'">'.$this->config->get('simplegreat_layout_custommenu_item2_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item3_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item3_url').'">'.$this->config->get('simplegreat_layout_custommenu_item3_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item4_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item4_url').'">'.$this->config->get('simplegreat_layout_custommenu_item4_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item5_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item5_url').'">'.$this->config->get('simplegreat_layout_custommenu_item5_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item6_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item6_url').'">'.$this->config->get('simplegreat_layout_custommenu_item6_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item7_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item7_url').'">'.$this->config->get('simplegreat_layout_custommenu_item7_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item8_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item8_url').'">'.$this->config->get('simplegreat_layout_custommenu_item8_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item9_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item9_url').'">'.$this->config->get('simplegreat_layout_custommenu_item9_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item10_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item10_url').'">'.$this->config->get('simplegreat_layout_custommenu_item10_text').'</a></li>';

?>
<?
  // custom block
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_block') == 1)&&($this->config->get('simplegreat_layout_custommenu_block_position') == 1))
{

if($this->config->get('simplegreat_layout_custommenu_block_title')<>'') echo '<li class="li-custom-block"><a>'.$this->config->get('simplegreat_layout_custommenu_block_title').'</a><div class="custom-topmenu-block"><ul><li>'.html_entity_decode($this->config->get('simplegreat_layout_custommenu_block_content')).'</li></ul></div></li>';

}
    ?>
  </ul>
</div>
<?
}
else
{
?>
<?php if ($categories) { ?>
<div id="menu" class="clearfix">
  <ul>
      <?
  // custom block
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_block') == 1)&&($this->config->get('simplegreat_layout_custommenu_block_position') == 0))
{

if($this->config->get('simplegreat_layout_custommenu_block_title')<>'') echo '<li class="li-custom-block"><a>'.$this->config->get('simplegreat_layout_custommenu_block_title').'</a><div class="custom-topmenu-block"><ul><li>'.html_entity_decode($this->config->get('simplegreat_layout_custommenu_block_content')).'</li></ul></div></li>';

}
    ?>
    <li><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
   <?php
      
      foreach ($categories as $category) { ?>
    <?php if(isset($category['class'])) { ?>
    <li><a href="<?php echo $category['href']; ?>" class="<?php echo $category['class']; ?>"><?php echo $category['name']; ?></a>
    <?php } else { ?>
    <li><a onmouseover='JavaScript:closeSubMenu()' href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
    <?php } ?>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>					
				<!-- Begin Part 1 of the extension Header menu add level 3 sub categories extension (line to be replaced: number 84 of the header.tpl file) -->		
				<li>
				<?php
				if(!isset($category['children'][$i]['children_level2'])) {
				    $category['children'][$i]['children_level2'] = null;
				}
				if(count($category['children'][$i]['children_level2'])>0){
				?>
						<a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:openSubMenu("<?php echo $category['children'][$i]['id']; ?>")'><?php echo $category['children'][$i]['name']; ?>
				<?php

						echo "<img src='catalog/view/theme/simplegreat/image/arrow-right.png' style='right:10px;margin-top:7px;position:absolute;'/></a>";
										}
				else
				{
				?>
				<?php if(isset($category['children'][$i]['image'])) { ?>
				
				<?php if($this->config->get('simplegreat_layout_brandsmenu_showimages') == 1) { ?>
				<a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:closeSubMenu()' ><img src="image/<?php echo $category['children'][$i]['image']; ?>"></a>
				<?php } ?>
				
				<a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:closeSubMenu()' ><?php echo $category['children'][$i]['name']; ?></a>
				
				<?php } else { ?>
				<a href="<?php echo $category['children'][$i]['href']; ?>" onmouseover='JavaScript:closeSubMenu()' ><?php echo $category['children'][$i]['name']; ?></a>
				<?php } ?>
				<?php
				}
				?>

				<?php if ($category['children'][$i]['children_level2']) { ?>
					  <div class="submenu" id="id_menu_<?php echo $category['children'][$i]['id']; ?>">
					   <ul>
						<?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>
						  <li>
								<a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?>
								</a>
						  </li>
				  <?php } ?>
				</ul>
			  </div>
			  <?php } ?>		  
			</li>
			<!-- END Part 1 of the extension Header menu add level 3 sub categories extension -->
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php }
    
   ?>
  <?
  // append top menu
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu') == 1)&&($this->config->get('simplegreat_layout_custommenu_position') == 1))
{

if($this->config->get('simplegreat_layout_custommenu_item1_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item1_url').'">'.$this->config->get('simplegreat_layout_custommenu_item1_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item2_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item2_url').'">'.$this->config->get('simplegreat_layout_custommenu_item2_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item3_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item3_url').'">'.$this->config->get('simplegreat_layout_custommenu_item3_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item4_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item4_url').'">'.$this->config->get('simplegreat_layout_custommenu_item4_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item5_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item5_url').'">'.$this->config->get('simplegreat_layout_custommenu_item5_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item6_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item6_url').'">'.$this->config->get('simplegreat_layout_custommenu_item6_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item7_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item7_url').'">'.$this->config->get('simplegreat_layout_custommenu_item7_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item8_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item8_url').'">'.$this->config->get('simplegreat_layout_custommenu_item8_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item9_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item9_url').'">'.$this->config->get('simplegreat_layout_custommenu_item9_text').'</a></li>';
if($this->config->get('simplegreat_layout_custommenu_item10_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item10_url').'">'.$this->config->get('simplegreat_layout_custommenu_item10_text').'</a></li>';


}
    ?>
    <?
  // custom block
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_block') == 1)&&($this->config->get('simplegreat_layout_custommenu_block_position') == 1))
{

if($this->config->get('simplegreat_layout_custommenu_block_title')<>'') echo '<li class="li-custom-block"><a>'.$this->config->get('simplegreat_layout_custommenu_block_title').'</a><div class="custom-topmenu-block"><ul><li>'.html_entity_decode($this->config->get('simplegreat_layout_custommenu_block_content')).'</li></ul></div></li>';

}
    ?>
    <?
  // blog link
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_blog') == 1))
{

$this->language->load('module/simplegreat');
$blog_text = $this->language->get('text_blog_menu');
      
echo '<li class="li-blog"><a href="index.php?route=pavblog/blogs">'.$blog_text.'</a></li>';

}
    ?>
  </ul>
</div>
<?php } ?>

<? } //end custom menu?>
</div> <?php // menu-wrapper ?>


<div class="wrapper">

<?php if ($categories) { ?>
<?php
      $this->language->load('module/simplegreat');
      $mobile_menu = $this->language->get('text_mobilemenu');
?>
<div class="mobile-menu-toggle" style="display: none;"><?php echo $mobile_menu; ?> <img src="catalog/view/theme/simplegreat/image/arrow-down-medium.png"></div>
<div class="box mobile-menu" style="display: none;">
  <div class="box-content">
    <div class="box-category">
      <ul>
        <?php foreach ($categories as $category) { ?>
        
        <?php if(isset($category['class'])) { ?>
    <li class="<?php echo $category['class']; ?>">
    <?php } else { ?>
        <li>
        <?php } ?>
        
          <?php if ($category['children']) { echo '<div class="menuopen"></div>';}?><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
         
          <?php if ($category['children']) { ?>
          <ul>
            <?php foreach ($category['children'] as $child) { ?>
            <li>
             
              <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
            
            </li>
            <?php } ?>
            
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
            <?
  // blog link
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('simplegreat_layout_custommenu_blog') == 1))
{

$this->language->load('module/simplegreat');
$blog_text = $this->language->get('text_blog_menu');
      
echo '<li class="li-blog"><a href="index.php?route=pavblog/blogs">'.$blog_text.'</a></li>';

}
    ?>
        <?
        
if($this->config->get('simplegreat_layout_custommenu') == '1')
{
            
    if($this->config->get('simplegreat_layout_custommenu_item1_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item1_url').'">'.$this->config->get('simplegreat_layout_custommenu_item1_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item2_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item2_url').'">'.$this->config->get('simplegreat_layout_custommenu_item2_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item3_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item3_url').'">'.$this->config->get('simplegreat_layout_custommenu_item3_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item4_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item4_url').'">'.$this->config->get('simplegreat_layout_custommenu_item4_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item5_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item5_url').'">'.$this->config->get('simplegreat_layout_custommenu_item5_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item6_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item6_url').'">'.$this->config->get('simplegreat_layout_custommenu_item6_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item7_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item7_url').'">'.$this->config->get('simplegreat_layout_custommenu_item7_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item8_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item8_url').'">'.$this->config->get('simplegreat_layout_custommenu_item8_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item9_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item9_url').'">'.$this->config->get('simplegreat_layout_custommenu_item9_text').'</a></li>';
    if($this->config->get('simplegreat_layout_custommenu_item10_text')<>'') echo '<li><a href="'.$this->config->get('simplegreat_layout_custommenu_item10_url').'">'.$this->config->get('simplegreat_layout_custommenu_item10_text').'</a></li>';

}
?>
      </ul>
    </div>
  </div>
</div>
<?php } ?>

<div id="notification"></div>
<script type="text/javascript">
function openSubMenu(id){
        //
        $('.submenu').hide();
        document.getElementById("id_menu_"+id).style.display="block";
}
function closeSubMenu(){
		$('.submenu').hide();
}
</script>
<style>
.submenu{

    margin-top:-42px;
    left:140px;
    position:absolute;
    min-width:140px;
    display:none;
}
@media screen and (-webkit-min-device-pixel-ratio:0) {
 .submenu {left: 139px;}

    }
</style>
<!--[if IE 7]>
<style>
#menu > ul > li > div {
width:140px!important;
}
.submenu{
   left:145px;
}
</style>
<![endif]-->
<!--[if IE 8]>
<style>
#menu > ul > li > div {
width:140px!important;
}
.submenu{
   left:150px;
}
</style>
 <![endif]-->


<div class="container clearfix<?php if($is_homepage) { echo ' homepage'; }?>">



</div>
<?php 

$displayCustomFooter =  $this->config->get('customFooter_status');
$customFooter_onallpages = $this->config->get('customFooter_onallpages');
if(!isset($this->request->get['route'])) {
      $this->request->get['route'] = 'common/home';
}

$ishomepage = false;

if ($this->request->get['route'] == 'common/home') {
 $ishomepage = true;
}
?>

<?php
// Show about

  
  // Twitter
  $TWIITER_USERNAME = $this->config->get('twitter_username');
  
  if($TWIITER_USERNAME <> '')
  {
    $TWITTER_HTML = '<a class="twitter" href="http://twitter.com/'.$TWIITER_USERNAME.'" target="_blank">Twitter</a> ';
    
  }
  else
  {
    $TWITTER_HTML = '';
  }
  
  // Facebook
  $FB_USERNAME = $this->config->get('facebook_id');
  
  if($FB_USERNAME <> '')
  {
    $FB_HTML = '<a class="facebook" href="http://facebook.com/pages/dx/'.$FB_USERNAME.'" target="_blank">Facebook</a> ';
  }
  else
  {
    $FB_HTML = '';
  }
  
  // Skype
  $SKYPE_USERNAME = $this->config->get('skype');

  if($SKYPE_USERNAME <> '')
  {
    $SKYPE_HTML = '<a class="skype" href="skype://'.$SKYPE_USERNAME.'" target="_blank">'.$SKYPE_USERNAME.'</a> ';
  }
  else
  {
    $SKYPE_HTML = '';
  }
  
  // Pinterest
  $PINTEREST_URL = $this->config->get('social_icons_pinterest_url');
  
  if($PINTEREST_URL <> '')
  {
    $PINTEREST_HTML = '<a class="pinterest" href="'.$PINTEREST_URL.'" target="_blank">Pinterest</a> ';
  }
  else
  {
    $PINTEREST_HTML = '';
  }
  
  // Google+
  $GOOGLEPLUS_URL = $this->config->get('social_icons_googleplus_url');
  
  if($GOOGLEPLUS_URL <> '')
  {
    $GOOGLEPLUS_HTML = '<a class="google" href="'.$GOOGLEPLUS_URL.'" target="_blank">Google</a> ';
  }
  else
  {
    $GOOGLEPLUS_HTML = '';
  }
  
  
  // YouTube
  $YT_URL = $this->config->get('social_icons_youtube_url');
  
  if($YT_URL <> '')
  {
    $YT_HTML = '<a class="youtube" href="'.$YT_URL.'" target="_blank">Youtube</a> ';
  }
  else
  {
    $YT_HTML = '';
  }
  
  // Vimeo
  $VIMEO_URL = $this->config->get('social_icons_vimeo_url');
  
  if($VIMEO_URL <> '')
  {
    $VIMEO_HTML = '<a class="vimeo" href="'.$VIMEO_URL.'" target="_blank">Vimeo</a> ';
  }
  else
  {
    $VIMEO_HTML = '';
  }
  
  
  // Tumblr
  $TUMBLR_URL = $this->config->get('social_icons_tumblr_url');
  
  if($TUMBLR_URL <> '')
  {
    $TUMBLR_HTML = '<a class="tumblr" href="'.$TUMBLR_URL.'" target="_blank">Tumblr</a> ';
  }
  else
  {
    $TUMBLR_HTML = '';
  }
  
  // RSS
  $RSS_URL = $this->config->get('social_icons_rss_url');
  
  if($RSS_URL <> '')
  {
    $RSS_HTML = '<a class="rss" href="'.$RSS_URL.'" target="_blank">RSS</a> ';
  }
  else
  {
    $RSS_HTML = '';
  }
  
  
  // Flickr
  $FLICKR_URL = $this->config->get('social_icons_flickr_url');
  
  if($FLICKR_URL <> '')
  {
    $FLICKR_HTML = '<a class="flickr" href="'.$FLICKR_URL.'" target="_blank">Flickr</a> ';
  }
  else
  {
    $FLICKR_HTML = '';
  }
?>
<?
 $display_cf = true;
 
 if($customFooter_onallpages == 0)
 {
  if($ishomepage)
  {
   $display_cf = true;
  }
 }
 else
 {
  $display_cf = true;
 }
 if($display_cf):
?>
<!-- custom footer -->

<? endif; ?>


<div id="footer-container">


<div id="footer">
  <?php if ($informations) { ?>
  <div class="column">
    <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
  </div>
  <?php } ?>
  <div class="column">
    <h3><?php echo $text_service; ?></h3>
    <ul>
      <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
      <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
      <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
    </ul>
  </div>
  <div class="column">
    <h3><?php echo $text_extra; ?></h3>
    <ul>
      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
  </div>
  <?php
  $this->language->load('module/simplegreat');
  ?>
  <div class="column">
    <h3><?php echo $this->language->get('footer_contactus'); ?></h3>
    <div class="custom-footer-contact">
      <?php if ($this->config->get('custom_address')):?>
      <div class="address">
      <div class="contact-icon">&nbsp;</div>
      <div class="info"><? echo $this->config->get('custom_address');?></div>
      </div>
      <?php endif; ?>
      <?php if ($this->config->get('telephone1')):?>
      <div class="phone">
      <div class="contact-icon">&nbsp;</div>
      <div class="info"><?php if ($this->config->get('telephone1')) { echo $this->config->get('telephone1'); }?><?php if ($this->config->get('telephone2')) { echo ', '.$this->config->get('telephone2'); }?></div>
      </div>
      <?php endif; ?>
      <?php if ($this->config->get('email1')):?>
      <div class="email">
      <div class="contact-icon">&nbsp;</div>
      <div class="info"><?php if ($this->config->get('email1')) { echo '<a href="mailto:'.$this->config->get('email1').'">'.$this->config->get('email1').'</a>'; }?><?php if ($this->config->get('email2')) { echo ', <a href="mailto:'.$this->config->get('email2').'">'.$this->config->get('email2').'</a>'; }?></div>
      </div>
      <?php endif; ?>
      </div>
  </div>

  
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->
<div class="clear"></div>



</div>

<?php if ($this->config->get('twitter_column_status') == '1'):?>
<div class="twitter-posts">

  <script type="text/javascript">
jQuery(document).ready(function($){
      
$('#twitter_update_list').tweet({
 modpath: 'catalog/view/theme/simplegreat/js/twitter/',
 count: <?php echo $this->config->get('twitter_number_of_tweets') ; ?>,
 username: '<?php echo $this->config->get('twitter_username') ; ?>',
 template: "<img src='catalog/view/theme/simplegreat/image/twitter-quote.png'>{text}<span class='created'>{time}</span>",
 loading_text: '<img src="catalog/view/theme/simplegreat/image/loading.gif">',

});
   
 
$('.twitter-posts .bxslider ul').bxSlider({
	    mode: 'vertical',
            auto: true,
	    controls: false,
            pager: false
      });
});



</script>
  
    <ul id="twitter_update_list" class="bxslider"></ul>

</div>
<?php endif; ?>

<div class="footer-social clearfix">
<span>
<? if($this->config->get('facebook_footer_status') == 1) { echo $FB_HTML;} ?>
<? if($this->config->get('twitter_footer_status') == 1) { echo $TWITTER_HTML;} ?>
<?=$PINTEREST_HTML?>
<?=$GOOGLEPLUS_HTML?>
<?=$FLICKR_HTML?>
<?=$TUMBLR_HTML?>
<?=$VIMEO_HTML?>
<?=$YT_HTML?>
<?=$SKYPE_HTML?>
<?=$RSS_HTML?>
</span>
</div>


</div>
<!-- powered by footer -->
<div class="footer-wrapper">
<div class="footer clearfix">

<div id="powered"><?php
if(($this->config->get('simplegreat_status') == '1')&&(trim($this->config->get('footer_powered_text')) <> '')) {
 echo html_entity_decode($this->config->get('footer_powered_text'));
}
else
{
 echo $powered;
}

?>
</div>

<div id="paymenticons">
<?
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('payment_icons_enabled') == 1)) {
?>
<?
if($this->config->get('dx_paymenticon_custom')) {echo '<a target="_blank" href="'.$this->config->get('dx_paymenticon_custom_url').'"><img src="image/'.$this->config->get('dx_paymenticon_image').'" align="absmiddle"></a>'; }
if($this->config->get('payment_icons_paypal')) {echo '<a target="_blank" href="'.$this->config->get('payment_icons_paypal_url').'"><img src="catalog/view/theme/simplegreat/image/payment/PayPal.png" align="absmiddle"></a>'; }
if($this->config->get('payment_icons_visa')) {echo '<a target="_blank" href="'.$this->config->get('payment_icons_visa_url').'"><img src="catalog/view/theme/simplegreat/image/payment/Visa.png" align="absmiddle"></a>'; }
if($this->config->get('payment_icons_mastercard')) {echo '<a target="_blank" href="'.$this->config->get('payment_icons_mastercard_url').'"><img src="catalog/view/theme/simplegreat/image/payment/MasterCard.png" align="absmiddle"></a>'; }
if($this->config->get('payment_icons_discover')) {echo '<a target="_blank" href="'.$this->config->get('payment_icons_discover_url').'"><img src="catalog/view/theme/simplegreat/image/payment/Discover.png" align="absmiddle"></a>'; }
if($this->config->get('payment_icons_amex')) {echo '<a target="_blank" href="'.$this->config->get('payment_icons_amex_url').'"><img src="catalog/view/theme/simplegreat/image/payment/AmericanExpress.png" align="absmiddle"></a>'; }

?>
<?
}
?>
</div>
</div>

</div>
<?
if(($this->config->get('simplegreat_status') == '1')&&($this->config->get('footer_scroll_totop') == 1)) {
?>
<div id="scroll_to_top" data-399="display:none;" data-400="display:block;" ></div>
<?
}
?>
</body></html>
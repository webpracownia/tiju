<?php
################################################################################################
#  developed by dedalx http://dedalx.com/		                              	       #
#  All rights reserved                                                                         #
################################################################################################
class ControllerModuleSimplegreat extends Controller {
	
	private $error = array(); 
	
	public function index() {   
		
		// OpenCart 1.5.4
		// $this->load->language('module/simplegreat'))
		
		// OpenCart 1.5.5
		$this->language->load('module/simplegreat');
		
		//Set the title from the language file $_['heading_title'] string
		//$this->document->setTitle($this->language->get('heading_title'));
		$this->document->setTitle(strip_tags($this->language->get('heading_title')));

		//Load the settings model. You can also add any other models you want to load here.
		$this->load->model('setting/setting');
		
					$this->load->model('tool/image');
	
	if (isset($this->request->post['dx_image'])) {
			$this->data['dx_image'] = $this->request->post['dx_image'];
			$dx_image = $this->request->post['dx_image'];
		} else {
			$this->data['dx_image'] = '';
		}
		
		if (isset($this->request->post['dx_full_image'])) {
			$this->data['dx_full_image'] = $this->request->post['dx_full_image'];
			$dx_image = $this->request->post['dx_full_image'];
		} else {
			$this->data['dx_full_image'] = '';
		}
		
		
		//Save the settings if the user has submitted the admin form (ie if someone has pressed save).
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('simplegreat', $this->request->post);	

				
					
			$this->session->data['success'] = $this->language->get('text_success');
		
						
			$this->redirect($this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'));
		}
		
			$this->data['text_image_manager'] = 'Image manager';
					$this->data['token'] = $this->session->data['token'];		
		
		$text_strings = array(
				'heading_title',
				'text_enabled',
				'text_disabled',
				'text_content_top',
				'text_content_bottom',
				'text_column_left',
				'text_column_right',
				'entry_layout',
				'entry_position',
				'entry_status',
				'entry_sort_order',
				'button_save',
				'button_cancel',
				'button_add_module',
				'button_remove',
				'entry_example' 
		);
		
		foreach ($text_strings as $text) {
			$this->data[$text] = $this->language->get($text);
		}
		

		// store config data
		
		$config_data = array(
		'simplegreat_status',
		'simplegreat_color_body_bg',
		'simplegreat_button_bg',
		'simplegreat_button_hoverbg',
		'simplegreat_topmenu_bg',
		'simplegreat_color_body_color',
		'simplegreat_color_date',
		'simplegreat_topmenu_2lvl_bg',
		'simplegreat_currencylang',
		'simplegreat_topmenu_3lvl_bg',
		'simplegreat_footer_bg',
		'simplegreat_header_bg',
		'simplegreat_header_menu_bg',
		'simplegreat_color_quickviewdescrbg',
		'simplegreat_color_link',
		'simplegreat_color_linkhover',
		'simplegreat_header_menu_link',
		'simplegreat_header_menu_linkhover',
		'simplegreat_color_contentbg',
		'simplegreat_color_modulesubheader',
		'simplegreat_boxproduct_bg',
		'simplegreat_color_navbuttonsbg',
		'simplegreat_topmenu_border',
		'simplegreat_topmenu_link',
		'simplegreat_topmenu_linkhover',
		'simplegreat_topmenu2_link',
		'simplegreat_topmenu2_linkhover',
		'simplegreat_promobox_bg',
		'simplegreat_color_footerheader',
		'simplegreat_color_footerlinks',
		'simplegreat_color_footerlinkshover',
		'simplegreat_color_iconsbg',
		'simplegreat_color_powered',
		'simplegreat_color_header',
		'simplegreat_button_link',
		'simplegreat_boxproduct_border',
		'simplegreat_header_menu_linkborder',
		'simplegreat_input_bg',
		'simplegreat_input_text',
		'simplegreat_input_border',
		'simplegreat_category_link',
		'simplegreat_header_border',
		'simplegreat_main_border',
		'simplegreat_category_box',
		'simplegreat_category_text',
		'simplegreat_boxproductimage_bg',
		'simplegreat_productname',
		'simplegreat_aboutus_bg',
		'simplegreat_aboutus_text',
		'simplegreat_news_title',
		'simplegreat_regularprice',
		'simplegreat_oldprice',
		'simplegreat_newprice',
		'footer_scroll_totop',
		'simplegreat_body_bg_pattern',
		'simplegreat_body_font',
		'simplegreat_body_fontsize',
		'simplegreat_header_font',
		'simplegreat_buttons_font',
		'simplegreat_header_font_weight',
		'simplegreat_buttons_font_weight',
		'simplegreat_header_font_subset',
		'simplegreat_buttons_font_subset',
		'simplegreat_buttons_fontsize',
		'simplegreat_header_fontsize',
		'simplegreat_fonts_transform',
		'simplegreat_bfonts_transform',
		'simplegreat_footer_b',
		'dx_image',
		'simplegreat_preview',
		'dx_bg_image',
		'dx_full_image',
		'simplegreat_full_preview',
		'dx_full_bg_image',
		'simplegreat_transparent_content',
		'simplegreat_fullwidthslider',
		'simplegreat_layout_responsive',
		'simplegreat_layout_catalogmode',
		'simplegreat_layout_boxed',
		'simplegreat_layout_boxed_shadow',
		'simplegreat_layout_related',
		'simplegreat_layout_pdisplay',
		'simplegreat_layout_fixedmenu',
		'simplegreat_layout_custommenu',
		'simplegreat_layout_custommenu_item1_text',
		'simplegreat_layout_custommenu_item2_text',
		'simplegreat_layout_custommenu_item3_text',
		'simplegreat_layout_custommenu_item4_text',
		'simplegreat_layout_custommenu_item5_text',
		'simplegreat_layout_custommenu_item6_text',
		'simplegreat_layout_custommenu_item7_text',
		'simplegreat_layout_custommenu_item8_text',
		'simplegreat_layout_custommenu_item9_text',
		'simplegreat_layout_custommenu_item10_text',
		'simplegreat_layout_custommenu_item1_url',
		'simplegreat_layout_custommenu_item2_url',
		'simplegreat_layout_custommenu_item3_url',
		'simplegreat_layout_custommenu_item4_url',
		'simplegreat_layout_custommenu_item5_url',
		'simplegreat_layout_custommenu_item6_url',
		'simplegreat_layout_custommenu_item7_url',
		'simplegreat_layout_custommenu_item8_url',
		'simplegreat_layout_custommenu_item9_url',
		'simplegreat_layout_custommenu_item10_url',
		'simplegreat_layout_custommenu_blog',
		'simplegreat_layout_bloginabout',
		'simplegreat_layout_custommenu_block',
		'simplegreat_layout_custommenu_block_title',
		'simplegreat_layout_custommenu_block_content',
		'simplegreat_layout_custommenu_position',
		'simplegreat_layout_custommenu_block_width',
		'simplegreat_layout_custommenu_block_position',
		'simplegreat_layout_quickview',
		'simplegreat_layout_refsearch',
		'simplegreat_productboxsize',
		'facebook_footer_status',
		'twitter_footer_status',
		'simplegreat_layout_brandsmenu',
		'simplegreat_layout_brandsmenu_showimages',
		'simplegreat_effects_css',
		'layout_product_customtab_content',
		'layout_product_customtab_title',
		'layout_product_customtab',
		'layout_product_customcontactblock_content',
		'layout_product_customcontactblock',
		'layout_product_rightsidebar',
		'layout_product_rightsidebar_content',
		'layout_product_livepriceupdate',
		'layout_product_showsalebadge',
		'layout_product_showsalebadge_title',
		'layout_product_showsalebadge_color',
		'simplegreat_effects_carousel',
		'simplegreat_effects_carousel_limit',
		'simplegreat_effects_productimage',
		'simplegreat_effects_productadditionalcarousel',
		'simplegreat_custom_css',
		'simplegreat_custom_js',
		'simplegreat_slider_enable',
		'simplegreat_slider_autoplay',
		'simplegreat_slider_code',
		'simplegreat_slider_autoplay_delay',
		'customFooter_status',
		'customFooter_onallpages',
			'about_header', 
			'about_text',
		'contact_header',
		'custom_address',
		'telephone1',
		'telephone2',
		'email1',
		'email2',
		'skype',
		'fax',
		'facebook_status',
		'facebook_id',
		'custom_footer_column_status',
		'custom_footer_column_header',
		'custom_footer_column_content',
		  'twitter_column_status',
		  'twitter_column_header',
		'twitter_number_of_tweets',
		'twitter_username',
		'categories_column_status',
		'social_icons_googleplus_url',
		'social_icons_pinterest_url',
		'social_icons_youtube_url',
		'social_icons_vimeo_url',
		'social_icons_tumblr_url',
		'social_icons_rss_url',
		'social_icons_flickr_url',
		'facebook_float_position',
		'customblock_float_position',
		'customblock_float_content',
		'about_us_image',
		'about_us_image_status',
		'about_us_image_preview',
		'payment_icons_enabled',
		'payment_icons_paypal',
		'payment_icons_paypal_url',
		'payment_icons_visa',
		'payment_icons_visa_url',
		'payment_icons_mastercard',
		'payment_icons_mastercard_url',
		'payment_icons_discover',
		'payment_icons_discover_url',
		'payment_icons_amex',
		'payment_icons_amex_url',
		'dx_paymenticon_custom',
		'dx_paymenticon_image',
		'simplegreat_preview_payment',
		'dx_paymenticon_custom_url',
		'footer_powered_text',
		'empty'
		
		);
		
		foreach ($config_data as $conf) {
			if (isset($this->request->post[$conf])) {
				$this->data[$conf] = $this->request->post[$conf];
			} else {
				$this->data[$conf] = $this->config->get($conf);
			}
		}
		
		
		
	
		//This creates an error message. The error['warning'] variable is set by the call to function validate() in this controller (below)
 		if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		
		//SET UP BREADCRUMB TRAIL. YOU WILL NOT NEED TO MODIFY THIS UNLESS YOU CHANGE YOUR MODULE NAME.
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_module'),
			'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('module/simplegreat', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);
		
		$this->data['action'] = $this->url->link('module/simplegreat', 'token=' . $this->session->data['token'], 'SSL');
		
		$this->data['cancel'] = $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL');

	
		//This code handles the situation where you have multiple instances of this module, for different layouts.
		if (isset($this->request->post['simplegreat_module'])) {
			$modules = explode(',', $this->request->post['simplegreat_module']);
		} elseif ($this->config->get('simplegreat_module') != '') {
			$modules = explode(',', $this->config->get('simplegreat_module'));
		} else {
			$modules = array();
		}			
				
		$this->load->model('design/layout');
		
		$this->data['layouts'] = $this->model_design_layout->getLayouts();
				
		foreach ($modules as $module) {
			if (isset($this->request->post['simplegreat_' . $module . '_layout_id'])) {
				$this->data['simplegreat_' . $module . '_layout_id'] = $this->request->post['simplegreat_' . $module . '_layout_id'];
			} else {
				$this->data['simplegreat_' . $module . '_layout_id'] = $this->config->get('simplegreat_' . $module . '_layout_id');
			}	
			
			if (isset($this->request->post['simplegreat_' . $module . '_position'])) {
				$this->data['simplegreat_' . $module . '_position'] = $this->request->post['simplegreat_' . $module . '_position'];
			} else {
				$this->data['simplegreat_' . $module . '_position'] = $this->config->get('simplegreat_' . $module . '_position');
			}	
			
			if (isset($this->request->post['simplegreat_' . $module . '_status'])) {
				$this->data['simplegreat_' . $module . '_status'] = $this->request->post['simplegreat_' . $module . '_status'];
			} else {
				$this->data['simplegreat_' . $module . '_status'] = $this->config->get('simplegreat_' . $module . '_status');
			}	
						
			if (isset($this->request->post['simplegreat_' . $module . '_sort_order'])) {
				$this->data['simplegreat_' . $module . '_sort_order'] = $this->request->post['simplegreat_' . $module . '_sort_order'];
			} else {
				$this->data['simplegreat_' . $module . '_sort_order'] = $this->config->get('simplegreat_' . $module . '_sort_order');
			}				
		}
		

		
		$this->data['modules'] = $modules;
		
		if (isset($this->request->post['simplegreat_module'])) {
			$this->data['simplegreat_module'] = $this->request->post['simplegreat_module'];
		} else {
			$this->data['simplegreat_module'] = $this->config->get('simplegreat_module');
		}

		//Choose which template file will be used to display this request.
		$this->template = 'module/simplegreat.tpl';
		$this->children = array(
			'common/header',
			'common/footer',
		);
		
		if (isset($this->data['dx_paymenticon_image']) && file_exists(DIR_IMAGE . $this->data['dx_paymenticon_image'])) {
			$this->data['simplegreat_preview_payment'] = $this->model_tool_image->resize($this->data['dx_paymenticon_image'], 70, 70);
		} else {
			$this->data['simplegreat_preview_payment'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
		
		if (isset($this->data['dx_image']) && file_exists(DIR_IMAGE . $this->data['dx_image'])) {
			$this->data['simplegreat_preview'] = $this->model_tool_image->resize($this->data['dx_image'], 70, 70);
		} else {
			$this->data['simplegreat_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
		
		
		if (isset($this->data['dx_full_image']) && file_exists(DIR_IMAGE . $this->data['dx_full_image'])) {
			$this->data['simplegreat_full_preview'] = $this->model_tool_image->resize($this->data['dx_full_image'], 70, 70);
		} else {
			$this->data['simplegreat_full_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}

		if (isset($this->data['about_us_image']) && file_exists(DIR_IMAGE . $this->data['about_us_image'])) {
			$this->data['about_us_image_preview'] = $this->model_tool_image->resize($this->data['about_us_image'], 70, 70);
		} else {
			$this->data['about_us_image_preview'] = $this->model_tool_image->resize('no_image.jpg', 50, 70);
		}
		
		//Send the output.
		$this->response->setOutput($this->render());
	}
	
	/*
	 * 
	 * This function is called to ensure that the settings chosen by the admin user are allowed/valid.
	 * You can add checks in here of your own.
	 * 
	 */
	
	
	private function validate() {
		if (!$this->user->hasPermission('modify', 'module/simplegreat')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}
		
		if (!$this->error) {
			return TRUE;
		} else {
			return FALSE;
		}	
	}


}
?>
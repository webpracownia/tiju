<?php echo $header; ?>
<link  href="http://fonts.googleapis.com/css?family=Open+Sans:300,600,regular" rel="stylesheet" type="text/css" >
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
<script type="text/javascript" src="../catalog/view/theme/simplegreat/js/jquery.form.js"></script>
		
<link rel="stylesheet" type="text/css" href="../catalog/view/theme/simplegreat/stylesheet/dd.css" />
<script type="text/javascript" src="../catalog/view/theme/simplegreat/js/jquery.dd.min.js"></script>

<div id="content">
<style type="text/css">
.htabs.vert a {
	background:#F5F5F5;
	color:#000;
	font-family:"Open Sans";
	font-size:13px;
	font-weight:normal;
	text-transform:uppercase;
}
.htabs.vert a:hover {
	background:#fff;
}
a:hover {
	color:#969B9D;
}
.font-preview {
	<?
	if (!isset($simplegreat_header_fontsize)) {
                	
		 $simplegreat_header_fontsize = '22';
            
	}
	?>
	font-size:<?=$simplegreat_header_fontsize?>px;

}

.htabs.vert {
	width:130px;
	float:left;
	padding-left:0px;
}
.htabs.vert a {
	width:130px;
	text-align:left;
	padding-top:10px;
	padding-bottom:10px;
}
.htabs.vert img {
	margin-right:10px;
}
.htabs.vert a:last-child {
	border-bottom: 1px solid #DDDDDD;
}
.theme_support {
	color:#24527d!important;
}
.hcontent.vert {
	border-left: 1px solid #DDDDDD;
	border-top: 1px solid #DDDDDD;
	margin-left:160px;
	min-height:440px;
	padding-top:10px;
}
.hcontent.vert > div {
	margin-left:20px;
}
.hcontent.vert div.selector {
	margin-left:0px!important;
}
.htabs.vert a:hover {
	color:#000;
}
.htabs.vert .selected {
	background:#fff;
	color:#C2A26F;
	border-right:none;
	padding-top:10px!important;
	padding-bottom:10px!important;
}
.heading h1 {

	
	color:#000!important;
}
.tdhead {
	background:#f6f6f6;
	color:#C2A26F!important;
	font-weight:bold;
	text-transform:uppercase;
}
h1 {
	font-weight:normal;
	font-size:24px!important;
	margin-top:0px!important;
	padding-top:0px!important;
	color:#C2A26F;
	border-bottom:1px solid #DDDDDD;
	text-transform:uppercase;
	font-family:"Open Sans";
}
h2 {
	
	color:#C2A26F!important;
	font-weight:300!important;
	font-size:24px!important;
	margin-top:0px!important;
	padding-top:0px!important;
	font-family:"Open Sans";
}
h3 {
	
	font-weight:300!important;
	font-size:24px!important;
	margin:0px!important;
	padding:0px!important;
	border-bottom:1px dotted #000;
	font-family:"Open Sans";
}
.box > .content {
    border-top: 1px solid #CCCCCC;

}
#tab_colors .form input, #layout_product_showsalebadge_color {
	color:#fff;
	text-shadow:1px 1px 1px #000;
	padding:3px;
	width:50px;
	text-transform:uppercase;
	border:1px solid #ccc;
	margin-left:5px;
	background-image:none!important;
	-moz-box-shadow:inset 0px 0px 1px 0px #777777;
	-webkit-box-shadow:inset 0px 0px 1px 0px #777777;
	box-shadow:inset 0px 0px 1px 0px #777777;

}
.color-buttons {
	background:#f3f3f3;
	padding:10px;
	margin-top:10px;
	text-align:left;
	min-width:780px;
	margin-bottom:20px;
}
.color-buttons input,.color-buttons select {
	padding:4px;
}
.color-buttons a  {
	background: #C2A26F;
	padding:5px;
	color: #fff;
	text-decoration:none;
	
	padding-left:15px;
	padding-right:15px;
	font-weight:bold;
	
}

.color-buttons a:last-child {
	background:red;
	color:#fff;
}
.color-buttons a:hover {
	color:#fff;
	background:#000;
}
.save-buttons {
	float:right;
}
.save-buttons a {
	background:#F2532F;
	padding:7px;
	
	font-weight:bold;
	margin-left:10px;
	color: #fff;
	text-decoration:none;
	text-shadow:0px 1px 1px #666;
}
.save-buttons a:first-child {
	background:#56a702;
}
#exportColors {
	float:left;
	margin-left:10px;
}
.save-buttons a:hover {
	
	color:yellow;
}
#select-patern-image {
	margin-left:10px;
	margin-top:-10px;
}
.notification {
    background: #EAF7D9;
    border: 1px solid #BBDF8D;
    font-size:16px;
    padding:7px;
    text-align:center;
    color:#185b0f;
}
.dd, .dd div {
	width:auto!important;
}

.dd #select-patern_child  {
	height:300px!important;
}

.ddTitleText {
	min-width: 250px!important;
}
.ddcommon .ddChild  {
	width:250px!important;
}
.dd .ddChild li img  {
	width: 40px!important;
}
.dd .ddTitle .ddTitleText img  {
	max-width:100px!important;
}
</style>

<script type="text/javascript"><!--

$(document).ready(function() {
	
   var options = {
	
	  success: function() {
	       
		$(".notification").slideDown().delay(2000).slideUp();
		
		$('html, body').animate({ scrollTop: 0 }, 'slow'); 
	  }
   };
   
   $("#form").ajaxForm(options);
   
   
   var themesData = new Array();
   
   function getThemeList()
   {
	$("#import_scheme_name").html('');	
	
	// Get color themes
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=import_colors', function(data) {
	
	var schemesList = data.split("^");
	
	for(i=0;i<schemesList.length-1;i++)
	{
		var colorList = schemesList[i].split(',');
		
		var themeid = i;
		
		// Make theme list
		var valueList = colorList[1].split(':');
		var o = new Option(valueList[1], themeid);
		$("#import_scheme_name").append(o);
		
		// Store theme data in array
		themesData.push(schemesList[i]);
		
	}
	
	//$.uniform.update();
	
   });
   }
   
   function updateColorBg()
   {
	$.each($('#tab_colors input'), function() {
		$(this).css('background-color', '#'+$(this).val());
	     });
	
	$('#layout_product_showsalebadge_color').css('background-color', '#'+$('#layout_product_showsalebadge_color').val());
   }
   
  getThemeList();
   
  updateColorBg();


  $("#deleteColors").click(function(){
	
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=delete_colors&themeid='+$("#import_scheme_name").val(), function(data) {
		alert(data);
		getThemeList();
		
	      });
  });

  $("#importColors").click(function(){
	
	var loadthemeid = ($("#import_scheme_name").val());
	
	var themeData = themesData[loadthemeid];
	
	var colorList = themeData.split(',');
	
	for(j=2;j<colorList.length-1;j++)
	{
		var valueList = colorList[j].split(':');

		$('[name='+valueList[0]+']').val(valueList[1]);
	}
	
	updateColorBg();
	
  });
  
  $("#exportColors").click(function(){
	
	var expData = '';
	
	$.each($('#tab_colors input'), function() {
		expData = expData + $(this).attr("name")+':'+$(this).val()+',';

        });
	expData = 'color_scheme_name:' + $('#color_scheme_name').val() + ',' + expData + '^';

	$.post('../catalog/view/theme/simplegreat/js/admin_ajax.php', { act: "export_colors", data: expData }, function(data) {
		alert(data);
		getThemeList();
	});
	/*
	
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=export_colors&data='+expData, function(data) {
		alert(data);
		getThemeList();
		
	      });*/
  });
  
  // from footer JS
	
	function strpos (haystack, needle, offset) {
		var i = (haystack+'').indexOf(needle, (offset || 0));
		return i === -1 ? false : i;
	      }
	      
	
		
	var activeFont = 0;
	
	$('.font-family-select').change(function(){
		
		activeFont = 1;
		
		getWeightList();
		getSubsetsList();
		
		
		$('head #googlefont').remove();
		var link = "<link href='http://fonts.googleapis.com/css?family="+$(this).val()+":"+weightString+"&subset="+subsetsString+"' id='googlefont' rel='stylesheet' type='text/css'>";
		$('head').append(link);
		
		var fontname = 	$(this).val().replace(/\+/g," ");
		
		$('.font-preview').css("font-family",'"'+fontname+'"');
		$('.font-preview').css("font-style","normal");
		$('.font-preview').css("font-weight",$("#simplegreat_header_font_weight").val());
		
		
	});
	
	$('.font-family-select2').change(function(){
		
		activeFont = 2;
		
		getWeightList();
		getSubsetsList();
		
		/*
		$('head #googlefont2').remove();
		var link = "<link href='http://fonts.googleapis.com/css?family="+$(this).val()+":"+weightString+"&subset="+subsetsString+"' id='googlefont2' rel='stylesheet' type='text/css'>";
		$('head').append(link);
		*/
		var fontname = 	$(this).val().replace(/\+/g," ");
		
		$('.font-preview').css("font-family",'"'+fontname+'"');
		$('.font-preview').css("font-style","normal");
		$('.font-preview').css("font-weight",$("#simplegreat_buttons_font_weight").val());
		
	});
	
	$('.font-weight-select').change(function(){
		
		activeFont = 1;
		
		var weight = $("#simplegreat_header_font_weight").val().replace(/\italic/g,"");
		
		$('.font-preview').css("font-weight",weight);
		
		if(weight.length < $("#simplegreat_header_font_weight").val().length)
		{
			$('.font-preview').css("font-style","italic");
		}
		else
		{
			$('.font-preview').css("font-style","normal");
		}
		
		$('.font-preview').css("font-family",'"'+$("#simplegreat_header_font").val()+'"');
		
		if($("#simplegreat_header_font_weight").val()=='regular')
		{
			$('.font-preview').css("font-weight","normal");			
		}
	});
	
	$('.font-weight-select2').change(function(){
		
		activeFont = 2;
		
		var weight = $("#simplegreat_buttons_font_weight").val().replace(/\italic/g,"");
		
		$('.font-preview').css("font-weight",weight);
		
		if(weight.length < $("#simplegreat_buttons_font_weight").val().length)
		{
			$('.font-preview').css("font-style","italic");
		}
		else
		{
			$('.font-preview').css("font-style","normal");
		}
		$('.font-preview').css("font-family",'"'+$("#simplegreat_buttons_font").val()+'"');
		
		if($("#simplegreat_buttons_font_weight").val()=='regular')
		{
			$('.font-preview').css("font-weight","normal");			
		}
		
	});
	
	$('.size-select').change(function(){
			
			$('.font-preview').css("font-size",$(this).val()+'px');
		
	});
	
	$('#tab_colors .form input').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$.each($('#tab_colors input'), function() {
				$(this).css('background-color', '#'+$(this).val());
			     });
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});
	
	$('#layout_product_showsalebadge_color').ColorPicker({
		onSubmit: function(hsb, hex, rgb, el) {
			$(el).val(hex);
			$('#layout_product_showsalebadge_color').css('background-color', '#'+$('#layout_product_showsalebadge_color').val());
			$(el).ColorPickerHide();
		},
		onBeforeShow: function () {
			$(this).ColorPickerSetColor(this.value);
		}
	})
	.bind('keyup', function(){
		$(this).ColorPickerSetColor(this.value);
	});

<?php
if (!isset($simplegreat_header_font)) {
                	
            	$simplegreat_header_font = 'Open Sans';
}
if (!isset($simplegreat_buttons_font)) {
                	
            	$simplegreat_buttons_font = 'Open Sans';
}
if (!isset($simplegreat_header_font_weight)) {
                	
            	$simplegreat_header_font_weight = 'regular';
}
if (!isset($simplegreat_buttons_font_weight)) {
                	
            	$simplegreat_buttons_font_weight = 'regular';
}
if (!isset($simplegreat_header_font_subset)) {
                	
            	$simplegreat_header_font_subset = 'cyrillic';
}
if (!isset($simplegreat_buttons_font_subset)) {
                	
            	$simplegreat_buttons_font_subset = 'cyrillic';
}
?>
  
	
  function getFontsList()
  {
	$("#simplegreat_header_font").html('');	
	$("#simplegreat_header_font_weight").html('');
	$("#simplegreat_header_font_subset").html('');
	
	$("#simplegreat_buttons_font").html('');	
	$("#simplegreat_buttons_font_weight").html('');
	$("#simplegreat_buttons_font_subset").html('');
	
	// Get color themes
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=get_fonts', function(data) {
	
	var fontsList = data.split("\n");
	
	
	$

	for(i=0;i<fontsList.length-1;i++)
	{
		var familyList = fontsList[i].split(':');
		
		var o = new Option(familyList[0], familyList[0]);
		$("#simplegreat_header_font").append(o);
	
	}
	
	
	
	$("#simplegreat_buttons_font").html("<option selected value=\"<?=$simplegreat_buttons_font?>\"><?=str_replace("+"," ",$simplegreat_buttons_font)?></option><option value=\"Trebuchet MS\">Trebuchet MS</option>"+$("#simplegreat_header_font").html());
	
	$("#simplegreat_header_font").prepend("<option selected value=\"<?=$simplegreat_header_font?>\"><?=str_replace("+"," ",$simplegreat_header_font)?></option>");
	
	
	//$.uniform.update(); 
   });
  }
  
  var weightString = "";
  var weightString2 = "";
  
  function getWeightList()
  {
	// Get color themes
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=get_fonts', function(data)
	{
	
		var fontsList = data.split("\n");
		
		for(i=0;i<fontsList.length-1;i++)
		{
			var familyList = fontsList[i].split(':');
			if((activeFont == 0)||(activeFont == 1))
			if(familyList[0]==$("#simplegreat_header_font").val())
			{
				var weightList = familyList[1].split(',');
				
				weightString = "";
				
				$("#simplegreat_header_font_weight").html('');
				
				for(j=0;j<weightList.length;j++)
				{
					
					var q = new Option(weightList[j], weightList[j]);
					$("#simplegreat_header_font_weight").append(q);
					
					if(j==(weightList.length-1))
					{
						weightString = weightString + weightList[j];
						
						$('head #googlefont').remove();
						var link = "<link href='http://fonts.googleapis.com/css?family="+$("#simplegreat_header_font").val()+":"+weightString+"&subset="+subsetsString+"' id='googlefont' rel='stylesheet' type='text/css'>";
						$('head').append(link);
					}
					else
					{
						weightString = weightString + weightList[j]+',';
						
					}
					
				}
				
				
			}
			
			// buttons font
			if((activeFont == 0)||(activeFont == 2))
			if(familyList[0]==$("#simplegreat_buttons_font").val())
			{
				var weightList = familyList[1].split(',');
				
				weightString2 = "";
				
				$("#simplegreat_buttons_font_weight").html('');
				
				for(j=0;j<weightList.length;j++)
				{
					
					var q = new Option(weightList[j], weightList[j]);
					$("#simplegreat_buttons_font_weight").append(q);
					
					if(j==(weightList.length-1))
					{
						weightString2 = weightString2 + weightList[j];
						
						$('head #googlefont2').remove();
						var link = "<link href='http://fonts.googleapis.com/css?family="+$("#simplegreat_buttons_font").val()+":"+weightString2+"&subset="+subsetsString2+"' id='googlefont2' rel='stylesheet' type='text/css'>";
						$('head').append(link);
					}
					else
					{
						weightString2 = weightString2 + weightList[j]+',';
						
					}
					
				}
				
				
			}
			
		}
	
		if(activeFont == 0)
		{
			$("#simplegreat_header_font_weight").prepend("<option selected value=\"<?=$simplegreat_header_font_weight?>\"><?=$simplegreat_header_font_weight?></option>");
			$("#simplegreat_buttons_font_weight").prepend("<option selected value=\"<?=$simplegreat_buttons_font_weight?>\"><?=$simplegreat_buttons_font_weight?></option>");
		}
	
		//$.uniform.update();
		
	});
  
  }
  
  var subsetsString = "";
  var subsetsString2 = "";
  
  function getSubsetsList()
  {
	// Get color themes
	$.get('../catalog/view/theme/simplegreat/js/admin_ajax.php?act=get_fonts', function(data)
	{
	
		var fontsList = data.split("\n");
		
		
		for(i=0;i<fontsList.length-1;i++)
		{
			var familyList = fontsList[i].split(':');
			if((activeFont == 0)||(activeFont == 1))
			if(familyList[0]==$("#simplegreat_header_font").val())
			{
				var subsetsList = familyList[2].split(',');
				
				subsetsString = "";
				
				$("#simplegreat_header_font_subset").html('');
				for(j=0;j<subsetsList.length;j++)
				{
					
					var q = new Option(subsetsList[j], subsetsList[j]);
					$("#simplegreat_header_font_subset").append(q);
					
					if(j==(subsetsList.length-1))
					{
						subsetsString = subsetsString + subsetsList[j];
					}
					else
					{
						subsetsString = subsetsString + subsetsList[j]+',';
					}
				}
				
				
			}
			// buttons font
			if((activeFont == 0)||(activeFont == 2))
			if(familyList[0]==$("#simplegreat_buttons_font").val())
			{
				var subsetsList = familyList[2].split(',');
				
				subsetsString2 = "";
				
				$("#simplegreat_buttons_font_subset").html('');
				for(j=0;j<subsetsList.length;j++)
				{
					
					var q = new Option(subsetsList[j], subsetsList[j]);
					$("#simplegreat_buttons_font_subset").append(q);
					
					if(j==(subsetsList.length-1))
					{
						subsetsString2 = subsetsString2 + subsetsList[j];
					}
					else
					{
						subsetsString2 = subsetsString2 + subsetsList[j]+',';
					}
				}
				
				
			}
				
		}
	
		if(activeFont == 0)
		{
			$("#simplegreat_header_font_subset").prepend("<option selected value=\"<?=$simplegreat_header_font_subset?>\"><?=$simplegreat_header_font_subset?></option>");
			$("#simplegreat_buttons_font_subset").prepend("<option selected value=\"<?=$simplegreat_buttons_font_subset?>\"><?=$simplegreat_buttons_font_subset?></option>");
		}

		//$.uniform.update(); 
	});
  }
  
  // Init fonts
  getFontsList();
  getWeightList();
  getSubsetsList();
  
  
  // show default preview
  $('.font-preview').css("font-family","<?=$simplegreat_header_font?>");
  $('.font-preview').css("font-style","<? if(strpos($simplegreat_header_font_weight, "italic")) { echo 'italic'; } else { echo 'normal'; }?>");
  $('.font-preview').css("font-weight","<?=$simplegreat_header_font_weight?>");

  /*$("#simplegreat_header_font").html('');	
  $("#simplegreat_header_font_weight").html('');
  $("#simplegreat_header_font_subset").html('');
  */
  $('#tab_colors input:text').focus(
   
    function(){ 
        $(this).css('background-color', '#'+$(this).val());
    });

    $('#tab_colors input:text').blur(
    function(){
        $(this).css('background-color', '#'+$(this).val());
    });
    
    // $("input:not(.no-uniform):not(.dd input), textarea:not(.no-uniform), button:not(.no-uniform), select:not(.no-uniform)").uniform();
    
    $(".dd-menu").msDropdown();
    
   
    
});

--></script>
<div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>


       <?php 
        
        // set default values if no values were entered
       
	/*color*/
	if(empty($simplegreat_color_body_bg)) { $simplegreat_color_body_bg ="F6F7F8"; }
	if(empty($simplegreat_color_body_color)) { $simplegreat_color_body_color ="818181"; }
	if(empty($simplegreat_color_contentbg)) { $simplegreat_color_contentbg ="FFFFFF"; }
	if(empty($simplegreat_color_link)) { $simplegreat_color_link ="C2A26F"; }
	if(empty($simplegreat_color_linkhover)) { $simplegreat_color_linkhover ="000000"; }

	if(empty($simplegreat_button_bg)) { $simplegreat_button_bg ="C2A26F"; }
	if(empty($simplegreat_button_hoverbg)) { $simplegreat_button_hoverbg ="3D4445"; }
	if(empty($simplegreat_button_link)) { $simplegreat_button_link ="FFFFFF"; }
	if(empty($simplegreat_color_navbuttonsbg)) { $simplegreat_color_navbuttonsbg ="EAECEE"; }
	if(empty($simplegreat_topmenu_bg)) { $simplegreat_topmenu_bg ="FFFFFF"; }
	if(empty($simplegreat_topmenu_border)) { $simplegreat_topmenu_border ="EAE9E9"; }
	if(empty($simplegreat_topmenu_link)) { $simplegreat_topmenu_link ="000000"; }
	if(empty($simplegreat_topmenu_linkhover)) { $simplegreat_topmenu_linkhover ="FFFFFF"; }
	if(empty($simplegreat_topmenu2_link)) { $simplegreat_topmenu2_link ="A3A8A9"; }
	if(empty($simplegreat_topmenu2_linkhover)) { $simplegreat_topmenu2_linkhover ="C2A26F"; }

	if(empty($simplegreat_topmenu_2lvl_bg)) { $simplegreat_topmenu_2lvl_bg ="3D4445"; }
	if(empty($simplegreat_topmenu_3lvl_bg)) { $simplegreat_topmenu_3lvl_bg ="4A5456"; }
	if(empty($simplegreat_footer_bg)) { $simplegreat_footer_bg ="4A5456"; }
	if(empty($simplegreat_header_menu_bg)) { $simplegreat_header_menu_bg ="4A5456"; }
	if(empty($simplegreat_header_menu_linkborder)) { $simplegreat_header_menu_linkborder ="556163"; }
	if(empty($simplegreat_input_bg)) { $simplegreat_input_bg ="F3F3F3"; }
	if(empty($simplegreat_input_text)) { $simplegreat_input_text ="AAA8A8"; }
	if(empty($simplegreat_input_border)) { $simplegreat_input_border ="E6E9E8"; }
	if(empty($simplegreat_currencylang)) { $simplegreat_currencylang ="BABAB8"; }
	
	if(empty($simplegreat_category_link)) { $simplegreat_category_link ="353535"; }
	if(empty($simplegreat_color_date)) { $simplegreat_color_date ="767272"; }
	if(empty($simplegreat_color_quickviewdescrbg)) { $simplegreat_color_quickviewdescrbg ="F5F5F5"; }
	if(empty($simplegreat_header_border)) { $simplegreat_header_border ="DFDCD6"; }
	if(empty($simplegreat_main_border)) { $simplegreat_main_border ="DCDDDD"; }
	if(empty($simplegreat_category_box)) { $simplegreat_category_box ="4A5456"; }
	if(empty($simplegreat_category_text)) { $simplegreat_category_text ="FFFFFF"; }
	
	if(empty($simplegreat_header_menu_link)) { $simplegreat_header_menu_link ="FFFFFF"; }
	if(empty($simplegreat_header_menu_linkhover)) { $simplegreat_header_menu_linkhover ="C2A26F"; }
	if(empty($simplegreat_header_bg)) { $simplegreat_header_bg ="FFFFFF"; }
	if(empty($simplegreat_boxproduct_bg)) { $simplegreat_boxproduct_bg ="FFFFFF"; }
	if(empty($simplegreat_boxproduct_border)) { $simplegreat_boxproduct_border ="EAE9E9"; }
	if(empty($simplegreat_boxproductimage_bg)) { $simplegreat_boxproductimage_bg ="FFFFFF"; }
	if(empty($simplegreat_promobox_bg)) { $simplegreat_promobox_bg ="F6F7F8"; }
	if(empty($simplegreat_color_footerheader)) { $simplegreat_color_footerheader ="F6F7F8"; }
	
	if(empty($simplegreat_color_footerlinks)) { $simplegreat_color_footerlinks ="A3A8A9"; }
	if(empty($simplegreat_color_footerlinkshover)) { $simplegreat_color_footerlinkshover ="FFFFFF"; }
	if(empty($simplegreat_color_iconsbg)) { $simplegreat_color_iconsbg ="3D4445"; }
	if(empty($simplegreat_color_powered)) { $simplegreat_color_powered ="615F5F"; }
	
	if(empty($simplegreat_regularprice)) { $simplegreat_regularprice ="000000"; }
	if(empty($simplegreat_oldprice)) { $simplegreat_oldprice ="928F8F"; }
	if(empty($simplegreat_newprice)) { $simplegreat_newprice ="C2A26F"; }
	if(empty($simplegreat_productname)) { $simplegreat_productname ="000000"; }
	
	if(empty($simplegreat_color_header)) { $simplegreat_color_header ="000000"; }
	if(empty($simplegreat_color_modulesubheader)) { $simplegreat_color_modulesubheader ="B3B1B1"; }
	if(empty($simplegreat_aboutus_bg)) { $simplegreat_aboutus_bg ="3D4445"; }
	if(empty($simplegreat_aboutus_text)) { $simplegreat_aboutus_text ="FFFFFF"; }
	if(empty($simplegreat_news_title)) { $simplegreat_news_title ="000000"; }
	
        // BG
        if(empty($simplegreat_body_bg_pattern)) {
        	$simplegreat_body_bg_pattern ="no_pattern";
        }
        
       
        ?>
<div class="box">

  <div class="content">
	<div class="save-buttons"><a onclick="$('#form').submit();"><?php echo $button_save; ?> theme settings</a><a onclick="location = '<?php echo $cancel; ?>';"><?php echo $button_cancel; ?></a></div><h2>Welcome to SimpleGreat theme options panel</h2>
	<div class="notification" style="display:none;">Theme settings saved!</div>
	<p>
	
      Changes will be visible <b>only</b> if you select <b>Enabled</b> for "Enable custom theme options" selector. <span style="color:red;">If you enabled theme options first time you <b>must</b> click <b>Save theme settings button!</b></span>
	
  </p>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
    <div style="color:green;font-weight:bold;">Enable custom theme options? &nbsp;</span><select name="simplegreat_status">
              <?php
														if ($simplegreat_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select><br><br></div> 
	   
	    
    <div id="tabs" class="htabs vert"><a
	href="#tab_layout"><img src="../catalog/view/theme/simplegreat/image/admin/layout.png"> General</a><a href="#tab_colors"><img src="../catalog/view/theme/simplegreat/image/admin/colors.png"> Colors</a><a
	href="#tab_bg"><img src="../catalog/view/theme/simplegreat/image/admin/background.png"> Backgrounds</a><a href="#tab_fonts"><img src="../catalog/view/theme/simplegreat/image/admin/fonts.png"> Fonts</a>
	<a
	href="#tab_slider"><img src="../catalog/view/theme/simplegreat/image/admin/slider.png"> Revo Slider</a>
	<a
	href="#tab_custommenu"><img src="../catalog/view/theme/simplegreat/image/admin/menu.png"> Main Menu</a>
	
	
   <a
	href="#tab_contact"><img src="../catalog/view/theme/simplegreat/image/admin/contact.png"> Footer</a>
	<a
	href="#tab_customcode"><img src="../catalog/view/theme/simplegreat/image/admin/code.png"> Custom code</a>
	<a class="theme_support" 
	href="#theme_support"><img src="../catalog/view/theme/simplegreat/image/admin/support.png"> Support</a>
    </div>
   <div class="hcontent vert">
      <div id="tab_colors">
	
	
	
  
   
   
   
	<h1>Theme colors</h1>
	In this section, you can change theme colors. To change the color of element just <b>click inside text field</b> and use color picker. Choose color and <b>click <img src="../catalog/view/theme/simplegreat/image/admin/picker.png" align="absmiddle"/> icon</b> at the bottom right of color picker window to Save color</b>. 
	<p style="display:none;">You can create you own color schemes and save / load it when you want. Dont forget to click <b>Save theme settings</b> button to apply new colors.</p>
	<div class="color-buttons" style="margin-left:0px;"><div style="float:left;margin-left:0px;"><input id="color_scheme_name" class="color_scheme_name" name="color_scheme_name" value="My theme"> 
	</div><a id="exportColors">Save color scheme</a>   <div style="float:right;margin-left:0px;"><select name="import_scheme_name" id="import_scheme_name">
          
             

            </select> <a id="importColors">Load color scheme</a> <a id="deleteColors">Delete selected scheme</a></div><div style="clear:both"></div></div>
	
	
	 

   
      <div id="tab_colors_1">
      
       <table class="form">
	<tr>
		<td class="tdhead" colspan="2">Main</td>
	</tr>
	
        <tr>
          <td>Body background</td>
          <td>#<input id="simplegreat_color_body_bg" type="text" name="simplegreat_color_body_bg" value="<?php echo $simplegreat_color_body_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Body font color</td>
          <td>#<input id="simplegreat_color_body_color" type="text" name="simplegreat_color_body_color" value="<?php echo $simplegreat_color_body_color; ?>" ></td>
        </tr>
	<tr>
          <td>Content background</td>
          <td>#<input id="simplegreat_color_contentbg" type="text" name="simplegreat_color_contentbg" value="<?php echo $simplegreat_color_contentbg ; ?>" ></td>
        </tr>
	<tr>
          <td>Link color</td>
          <td>#<input id="simplegreat_color_link" type="text" name="simplegreat_color_link" value="<?php echo $simplegreat_color_link; ?>" ></td>
        </tr>
	<tr>
          <td>Link hover color</td>
          <td>#<input id="simplegreat_color_linkhover" type="text" name="simplegreat_color_linkhover" value="<?php echo $simplegreat_color_linkhover; ?>" ></td>
        </tr>
	<tr>
          <td>Headers color</td>
          <td>#<input id="simplegreat_color_header" type="text" name="simplegreat_color_header" value="<?php echo $simplegreat_color_header ; ?>" ></td>
        </tr>
	<tr>
          <td>Header border color</td>
          <td>#<input id="simplegreat_header_border" type="text" name="simplegreat_header_border" value="<?php echo $simplegreat_header_border ; ?>" ></td>
        </tr>
	<tr>
          <td>Modules subheader color</td>
          <td>#<input id="simplegreat_color_modulesubheader" type="text" name="simplegreat_color_modulesubheader" value="<?php echo $simplegreat_color_modulesubheader ; ?>" ></td>
        </tr>
	<tr>
          <td>Input fields background</td>
          <td>#<input id="simplegreat_input_bg" type="text" name="simplegreat_input_bg" value="<?php echo $simplegreat_input_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Input fields text</td>
          <td>#<input id="simplegreat_input_text" type="text" name="simplegreat_input_text" value="<?php echo $simplegreat_input_text ; ?>" ></td>
        </tr>
	<tr>
          <td>Input fields border</td>
          <td>#<input id="simplegreat_input_border" type="text" name="simplegreat_input_border" value="<?php echo $simplegreat_input_border ; ?>" ></td>
        </tr>
	<tr>
          <td>Main border color (1px border used in many places in theme)</td>
          <td>#<input id="simplegreat_main_border" type="text" name="simplegreat_main_border" value="<?php echo $simplegreat_main_border ; ?>" ></td>
        </tr>
	<tr>
          <td>Category links (in left/right columns)</td>
          <td>#<input id="simplegreat_category_link" type="text" name="simplegreat_category_link" value="<?php echo $simplegreat_category_link ; ?>" ></td>
        </tr>
	<tr>
          <td>Category description box background</td>
          <td>#<input id="simplegreat_category_box" type="text" name="simplegreat_category_box" value="<?php echo $simplegreat_category_box ; ?>" ></td>
        </tr>
	<tr>
          <td>Category description box text</td>
          <td>#<input id="simplegreat_category_text" type="text" name="simplegreat_category_text" value="<?php echo $simplegreat_category_text ; ?>" ></td>
        </tr>
	<tr>
		<td class="tdhead" colspan="2">Header</td>
	</tr>
	<tr>
          <td>Header background</td>
          <td>#<input id="simplegreat_header_bg" type="text" name="simplegreat_header_bg" value="<?php echo $simplegreat_header_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Header menu background</td>
          <td>#<input id="simplegreat_header_menu_bg" type="text" name="simplegreat_header_menu_bg" value="<?php echo $simplegreat_header_menu_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Header menu link color</td>
          <td>#<input id="simplegreat_header_menu_link" type="text" name="simplegreat_header_menu_link" value="<?php echo $simplegreat_header_menu_link ; ?>" ></td>
        </tr>
	<tr>
          <td>Header menu link hover color</td>
          <td>#<input id="simplegreat_header_menu_linkhover" type="text" name="simplegreat_header_menu_linkhover" value="<?php echo $simplegreat_header_menu_linkhover ; ?>" ></td>
        </tr>
	<tr>
          <td>Header menu link border color</td>
          <td>#<input id="simplegreat_header_menu_linkborder" type="text" name="simplegreat_header_menu_linkborder" value="<?php echo $simplegreat_header_menu_linkborder ; ?>" ></td>
        </tr>
	<tr>
          <td>Header menu currency/language links color</td>
          <td>#<input id="simplegreat_currencylang" type="text" name="simplegreat_currencylang" value="<?php echo $simplegreat_currencylang ; ?>" ></td>
        </tr>
	
	<tr>
		<td class="tdhead" colspan="2">Main menu</td>
	</tr>
	<tr>
          <td>Main menu background</td>
          <td>#<input id="simplegreat_topmenu_bg" type="text" name="simplegreat_topmenu_bg" value="<?php echo $simplegreat_topmenu_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu border</td>
          <td>#<input id="simplegreat_topmenu_border" type="text" name="simplegreat_topmenu_border" value="<?php echo $simplegreat_topmenu_border ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu links color</td>
          <td>#<input id="simplegreat_topmenu_link" type="text" name="simplegreat_topmenu_link" value="<?php echo $simplegreat_topmenu_link ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu links Hover color</td>
          <td>#<input id="simplegreat_topmenu_linkhover" type="text" name="simplegreat_topmenu_linkhover" value="<?php echo $simplegreat_topmenu_linkhover ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu 2 level background</td>
          <td>#<input id="simplegreat_topmenu_2lvl_bg" type="text" name="simplegreat_topmenu_2lvl_bg" value="<?php echo $simplegreat_topmenu_2lvl_bg ; ?>" ></td>
        </tr>
	
	<tr>
          <td>Main menu 3 level background</td>
          <td>#<input id="simplegreat_topmenu_3lvl_bg" type="text" name="simplegreat_topmenu_3lvl_bg" value="<?php echo $simplegreat_topmenu_3lvl_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu sublinks color</td>
          <td>#<input id="simplegreat_topmenu2_link" type="text" name="simplegreat_topmenu2_link" value="<?php echo $simplegreat_topmenu2_link ; ?>" ></td>
        </tr>
	<tr>
          <td>Main menu sublinks Hover color</td>
          <td>#<input id="simplegreat_topmenu2_linkhover" type="text" name="simplegreat_topmenu2_linkhover" value="<?php echo $simplegreat_topmenu2_linkhover ; ?>" ></td>
        </tr>
	
	<tr>
		<td class="tdhead" colspan="2">Buttons</td>
	</tr>
	<tr>
          <td>Button color</td>
          <td>#<input id="simplegreat_button_bg" type="text" name="simplegreat_button_bg" value="<?php echo $simplegreat_button_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Button Hover color</td>
          <td>#<input id="simplegreat_button_hoverbg" type="text" name="simplegreat_button_hoverbg" value="<?php echo $simplegreat_button_hoverbg ; ?>" ></td>
        </tr>
	<tr>
          <td>Button link color</td>
          <td>#<input id="simplegreat_button_link" type="text" name="simplegreat_button_link" value="<?php echo $simplegreat_button_link ; ?>" ></td>
        </tr>
	<tr>
          <td>Navigation Buttons color</td>
          <td>#<input id="simplegreat_color_navbuttonsbg" type="text" name="simplegreat_color_navbuttonsbg" value="<?php echo $simplegreat_color_navbuttonsbg ; ?>" ></td>
        </tr>
	<tr>
		<td class="tdhead" colspan="2">Product</td>
	</tr>	
	<tr>
          <td>Product box background</td>
          <td>#<input id="simplegreat_boxproduct_bg" type="text" name="simplegreat_boxproduct_bg" value="<?php echo $simplegreat_boxproduct_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Product box hover border</td>
          <td>#<input id="simplegreat_boxproduct_border" type="text" name="simplegreat_boxproduct_border" value="<?php echo $simplegreat_boxproduct_border ; ?>" ></td>
        </tr>
	<tr>
          <td>Product image background</td>
          <td>#<input id="simplegreat_boxproductimage_bg" type="text" name="simplegreat_boxproductimage_bg" value="<?php echo $simplegreat_boxproductimage_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Product name</td>
          <td>#<input id="simplegreat_productname" type="text" name="simplegreat_productname" value="<?php echo $simplegreat_productname ; ?>" ></td>
        </tr>
	<tr>
          <td>Price color</td>
          <td>#<input id="simplegreat_regularprice" type="text" name="simplegreat_regularprice" value="<?php echo $simplegreat_regularprice ; ?>" ></td>
        </tr>
	<tr>
          <td>Old Price color</td>
          <td>#<input id="simplegreat_oldprice" type="text" name="simplegreat_oldprice" value="<?php echo $simplegreat_oldprice ; ?>" ></td>
        </tr>
	<tr>
          <td>New Price color</td>
          <td>#<input id="simplegreat_newprice" type="text" name="simplegreat_newprice" value="<?php echo $simplegreat_newprice ; ?>" ></td>
        </tr>
	<tr>
		<td class="tdhead" colspan="2">Footer</td>
	</tr>
	<tr>
          <td>Footer background</td>
          <td>#<input id="simplegreat_footer_bg" type="text" name="simplegreat_footer_bg" value="<?php echo $simplegreat_footer_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>Footer Headers color</td>
          <td>#<input id="simplegreat_color_footerheader" type="text" name="simplegreat_color_footerheader" value="<?php echo $simplegreat_color_footerheader ; ?>" ></td>
        </tr>
	<tr>
          <td>Footer links color</td>
          <td>#<input id="simplegreat_color_footerlinks" type="text" name="simplegreat_color_footerlinks" value="<?php echo $simplegreat_color_footerlinks ; ?>" ></td>
        </tr>
	<tr>
          <td>Footer links hover color</td>
          <td>#<input id="simplegreat_color_footerlinkshover" type="text" name="simplegreat_color_footerlinkshover" value="<?php echo $simplegreat_color_footerlinkshover ; ?>" ></td>
        </tr>
	<tr>
          <td>Footer icons background</td>
          <td>#<input id="simplegreat_color_iconsbg" type="text" name="simplegreat_color_iconsbg" value="<?php echo $simplegreat_color_iconsbg ; ?>" ></td>
        </tr>
	<tr>
          <td>Footer powered by text color</td>
          <td>#<input id="simplegreat_color_powered" type="text" name="simplegreat_color_powered" value="<?php echo $simplegreat_color_powered ; ?>" ></td>
        </tr>
	<tr>
		<td class="tdhead" colspan="2">Additional</td>
	</tr>
	<tr>
          <td>Promo blocks background</td>
          <td>#<input id="simplegreat_promobox_bg" type="text" name="simplegreat_promobox_bg" value="<?php echo $simplegreat_promobox_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>About us block background</td>
          <td>#<input id="simplegreat_aboutus_bg" type="text" name="simplegreat_aboutus_bg" value="<?php echo $simplegreat_aboutus_bg ; ?>" ></td>
        </tr>
	<tr>
          <td>About us block text, button border</td>
          <td>#<input id="simplegreat_aboutus_text" type="text" name="simplegreat_aboutus_text" value="<?php echo $simplegreat_aboutus_text ; ?>" ></td>
        </tr>
	<tr>
          <td>News title</td>
          <td>#<input id="simplegreat_news_title" type="text" name="simplegreat_news_title" value="<?php echo $simplegreat_news_title ; ?>" ></td>
        </tr>
	<tr>
          <td>Dates (News, Twitter posts)</td>
          <td>#<input id="simplegreat_color_date" type="text" name="simplegreat_color_date" value="<?php echo $simplegreat_color_date ; ?>" ></td>
        </tr>
	<tr>
          <td>Quick view popup description background color</td>
          <td>#<input id="simplegreat_color_quickviewdescrbg" type="text" name="simplegreat_color_quickviewdescrbg" value="<?php echo $simplegreat_color_quickviewdescrbg ; ?>" ></td>
        </tr>
	
      </table>
       <p>You can change every theme element style and colors in Custom code > Custom CSS.</p>
      </div>
      
  
	
    
    
      
     
      </div>
   
      <!-- end colors tab -->
    
      <div id="tab_bg">
	<h1>Theme backgrounds</h1>
	
       
      <table class="form">
              
        
        
            <tr>
          <td>Background pattern:
             <?php if (!isset($simplegreat_body_bg_pattern)) {
                	
		 $simplegreat_body_bg_pattern = 'no_pattern';
            }
          
           
            ?>
           
          
          </td>
          <td>
            <select name="simplegreat_body_bg_pattern" id="select-patern" class="no-uniform dd-menu">
          
              <option value="<?=$simplegreat_body_bg_pattern?>" selected="selected" data-image="../catalog/view/theme/simplegreat/image/bg/<?=$simplegreat_body_bg_pattern;?>.png">Current pattern</option>
	      <option value="no_pattern" data-image="../catalog/view/theme/simplegreat/image/bg/no_pattern.png">No Pattern</option>

<?php 

for ($i = 1; $i <= 174; $i++) {
	
	echo '<option data-image="../catalog/view/theme/simplegreat/image/bg/'.$i.'.png" value="'. $i . '">Pattern '.$i.' (transparent)</option>';
}

for ($i = 1000; $i <= 1031; $i++) {
	

	
	echo '<option data-image="../catalog/view/theme/simplegreat/image/bg/'.$i.'.png" value="'. $i . '">Pattern '.$i.' (color)</option>';
}
?>
            </select>
            </td>  
            </tr> 
            <tr>   
           <td>Upload your own background pattern: </br>
           <?php 
           if(isset($dx_bg_image) && $dx_bg_image == '1'){
           	 ?>
           	 <input type="radio"  name="dx_bg_image" value="1" CHECKED/> Yes<br />
			<input type="radio" name="dx_bg_image" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="dx_bg_image" value="1" /> Yes<br />
			<input type="radio" name="dx_bg_image" value="0" CHECKED> No
         <?php   } ?>
	<br><br> <a onclick="image_upload('dx_image', 'simplegreat_preview');">Change image</a>
           </td>
              <td>
             
              <input type="hidden" name="dx_image" value="<?php echo $dx_image; ?>" id="dx_image" />
                <img src="<?php echo $simplegreat_preview; ?>" alt="" id="simplegreat_preview" class="image" onclick="image_upload('dx_image', 'simplegreat_preview');" /></td>         
          </td>
        </tr>
        
              <tr>   
           <td>Upload your image as full size background: </br>
           <?php 
           if(isset($dx_full_bg_image) && $dx_full_bg_image == '1'){
           	 ?>
           	 <input type="radio"  name="dx_full_bg_image" value="1" CHECKED/> Yes<br />
			<input type="radio" name="dx_full_bg_image" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="dx_full_bg_image" value="1" /> Yes<br />
			<input type="radio" name="dx_full_bg_image" value="0" CHECKED> No
         <?php   } ?>
	 <br><br><a onclick="image_upload('dx_full_image', 'simplegreat_full_preview');" >Change image</a>
           </td>
              <td>
             
              <input type="hidden" name="dx_full_image" value="<?php echo $dx_full_image; ?>" id="dx_full_image" />
                <img src="<?php echo $simplegreat_full_preview; ?>" alt="" id="simplegreat_full_preview" class="image" onclick="image_upload('dx_full_image', 'simplegreat_full_preview');" /></td>         
          </td>
        </tr>
        
        
      </table> 
      </div>
        <!-- end tab bg -->
	
       <div id="tab_fonts">
	<h1>Theme fonts</h1>
	
	<table class="form">
		<tr><td>Font preview:</td>
		<td><span class="font-preview">Grumpy wizards make toxic brew for the evil Queen and Jack.</span></td>
		</tr>
		
				 <tr><td colspan="2" class="tdhead">Headers font</td></tr>
		<tr>
          <td>Headers font:
              
          
            <br>Default font: Open Sans</b>
          </p>
          
          </td>
          <td>
          <select name="simplegreat_header_font" class="font-select font-family-select" id="simplegreat_header_font">
 
            </select>
	  &nbsp;Weight: <select name="simplegreat_header_font_weight" class="font-select font-weight-select" id="simplegreat_header_font_weight"></select> &nbsp;Subset: <select name="simplegreat_header_font_subset" class="font-select" id="simplegreat_header_font_subset"></select>
	  
          </td>
	  </tr>
		
		<tr>
	  <td>Headers font transform:</td>
	  <td>
		<select name="simplegreat_fonts_transform">

              <?php
	      $selected_1 = '';
	      if (!isset($simplegreat_fonts_transform)) {
		$selected_1 = "selected";
	      }
	      
              ?>
              <option value="uppercase" <?php echo $selected_1;  if($simplegreat_fonts_transform=='uppercase'){echo 'selected';} ?>>Uppercase letters (Default)</option>
	      <option value="capitalize" <?php if($simplegreat_fonts_transform=='capitalize'){echo 'selected';} ?>>Capitalize letters</option>
              <option value="none" <?php if($simplegreat_fonts_transform=='none'){echo 'selected';} ?>>None</option>
                 
            </select>        
		
          </td>
        </tr>
		<tr><td colspan="2" class="tdhead">Body font</td></tr>
                  <tr>
          <td>Body font:
              
	    <br>Default font: Open Sans
          </p>
          
          </td>
          <td>
          <select name="simplegreat_buttons_font" class="font-select2 font-family-select2" id="simplegreat_buttons_font">
		 
            </select> &nbsp;Weight: <select name="simplegreat_buttons_font_weight" class="font-select2 font-weight-select2" id="simplegreat_buttons_font_weight"></select> &nbsp;Subset: <select name="simplegreat_buttons_font_subset" class="font-select2" id="simplegreat_buttons_font_subset"></select>
          </td>
	  </tr>
		 <tr>
          <td>Body text font size:
              <?php if (!isset($simplegreat_buttons_fontsize)) {
                	
		 $simplegreat_buttons_fontsize = '12';
            }
          
           
            ?>
          
          
          </td>
          <td>
          <select name="simplegreat_buttons_fontsize" class="size-select">
          
              <option value="<?=$simplegreat_buttons_fontsize?>" selected="selected"><?=$simplegreat_buttons_fontsize?></option>

<?php 

for ($i = 10; $i <= 25; $i++) {
	
	echo '<option value="'. $i . '">' . $i .'</option>';
}
?>
            </select>   Default: 12
            </td>  
            </tr>   
		 
	</table>
       </div>
       <!-- end tab fonts -->
       <div id="tab_layout">
	<h1>General theme settings</h1>
	 <div id="tabs_4" class="htabs">
	 <a href="#tab_general_1">Layout</a>
	 <a href="#tab_general_2">Category page</a>
	 <a href="#tab_general_3">Product page</a>
	 <a href="#tab_general_4">Contact page</a>
	 </div>

	<div class="hcontent">
	   <div id="tab_general_1">
		<table class="form">
	<tr>
		<td><b>Responsive layout:</b></td>
		<td><select name="simplegreat_layout_responsive">
              <?php
														if ($simplegreat_layout_responsive) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td><b>Catalog mode:</b></td>
		<td><select name="simplegreat_layout_catalogmode">
              <?php
														if ($simplegreat_layout_catalogmode) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> Disable Cart and all other checkout features in shop</td>
	</tr>
	<tr>
			
		<td> <?php if(!isset($simplegreat_productboxsize)) { $simplegreat_productboxsize = 0; } ?>
            <label style="width: 110px">Product box size for modules and grid display: </label></td><td>
            <select name="simplegreat_productboxsize">
	      <option value="0"<?php if($simplegreat_productboxsize == '0') echo ' selected="selected"';?>>Default (4 products per row)</option>
              <option value="1"<?php if($simplegreat_productboxsize == '1') echo ' selected="selected"';?>>Large (3 products per row)</option>
            </select></td>
         </tr>
	<tr>
		<td>Show Blog posts in About Block Blog slider:</td>
		<td><select name="simplegreat_layout_bloginabout">
              <?php if(!isset($simplegreat_layout_bloginabout)) { $simplegreat_layout_bloginabout = 1; }
														if ($simplegreat_layout_bloginabout) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select><br>You need to add <a href="index.php?route=module/pavbloglatest">SimpleGreat Blog Latest Posts Module</a> to "Content Top" position on HomePage in order to use this feature. You can find more about this in Theme Documentation. </td>
	</tr>
	<tr>
		<td>Quick View button in product boxes:</td>
		<td><select name="simplegreat_layout_quickview">
              <?php if(!isset($simplegreat_layout_quickview)) { $simplegreat_layout_quickview = 1; }
														if ($simplegreat_layout_quickview) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> </td>
	</tr>
	<tr>
		<td>Show scroll to top button:</td>
		<td><select name="footer_scroll_totop">
              <?php if(!isset($footer_scroll_totop)) { $footer_scroll_totop = 1; }
														if ($footer_scroll_totop) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> </td>
	</tr>
	<tr>
		<td>Fixed header menu with cart:</td>
		<td><select name="simplegreat_layout_fixedmenu">
              <?php if(!isset($simplegreat_layout_fixedmenu)) { $simplegreat_layout_fixedmenu = 1; }
														if ($simplegreat_layout_fixedmenu) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> Header menu with cart will be fixed at the top when you scroll page</td>
	</tr>
	
	<tr>
		<td>CSS effects and animations:</td>
		<td><select name="simplegreat_effects_css">
 <?php if(!isset($simplegreat_effects_css)) { $simplegreat_effects_css = 1; }
														if ($simplegreat_effects_css) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>

	<tr>
	  <td>Ajax "Show more" for modules:</td>
	  <td>
		<select name="simplegreat_effects_carousel">

              <?php
	      $selected_1 = '';
	      if (!isset($simplegreat_effects_carousel)) {
		$selected_1 = "selected";
	      }
	      
              ?>
              <option value="enable" <?php echo $selected_1; if($simplegreat_effects_carousel=='enable'){echo 'selected';} ?>>Enable (default)</option>
              <option value="disable" <?php if($simplegreat_effects_carousel=='disable'){echo 'selected';} ?>>Disable</option> If you disable this option your products will display as multi line grid (like on Category page)
                 
            </select>        
		
          </td>
        </tr>
	
	<tr>
			
		<td>
            <label style="width: 110px">Ajax "Show more" button will show: </label></td><td>
            <select name="simplegreat_effects_carousel_limit">
	      <option value="4"<?php if($simplegreat_effects_carousel_limit == '4') echo ' selected="selected"';?>>4</option>
              <option value="2"<?php if($simplegreat_effects_carousel_limit == '2') echo ' selected="selected"';?>>2</option>
              <option value="3"<?php if($simplegreat_effects_carousel_limit == '3') echo ' selected="selected"';?>>3</option>
	      <option value="6"<?php if($simplegreat_effects_carousel_limit == '6') echo ' selected="selected"';?>>6</option>
	      <option value="8"<?php if($simplegreat_effects_carousel_limit == '8') echo ' selected="selected"';?>>8</option>
            </select> products</td>
         </tr>
	
	
	<tr><td colspan="2" class="tdhead">Floating content block</td></tr>
	<tr>
			
		<td>
            <label style="width: 110px">Content block float position:</label></td><td>
            <select name="customblock_float_position">
              
              <option value="right"<?php if($customblock_float_position == 'right') echo ' selected="selected"';?>>Right</option>
	      <option value="left"<?php if($customblock_float_position == 'left') echo ' selected="selected"';?>>Left</option>
            </select></td>
         </tr>
	<tr>
		<td>Block content:</td>
		<td><textarea name="customblock_float_content" id="simplegreat-customblock-ckeditor" rows="10" cols="50"><?php
		echo trim($customblock_float_content);
		?></textarea><br><br>This block content will be displayed at the left or right in floating block.
		</td>
	</tr>
      </table>
	   </div>
	   
	   <div id="tab_general_2">
		<table class="form">
		<tr>
	  <td>Default products display type:</td>
	  <td>
		<select name="simplegreat_layout_pdisplay">

              <?php
	      $selected_1 = '';
	      if (!isset($simplegreat_layout_pdisplay)) {
		$selected_1 = "selected";
	      }
	      
              ?>
              <option value="list" <?php echo $selected_1; if($simplegreat_layout_pdisplay=='list'){echo 'selected';} ?>>List (default)</option>
              <option value="grid" <?php if($simplegreat_layout_pdisplay=='grid'){echo 'selected';} ?>>Grid</option>
     
                 
            </select>       
		
          </td>
        </tr>  
	<tr>
	<?
	if (!isset($simplegreat_layout_refsearch))
	{
		$simplegreat_layout_refsearch = true;
	}
	?>
		<td>Show "Refine search" block:</td>
		<td><select name="simplegreat_layout_refsearch">
              <?php
														if ($simplegreat_layout_refsearch) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
      </table>
	   </div>
	   
	    <div id="tab_general_3">
		<table class="form">
		<tr>
		<td>Live price update for attributes:<br>(<b>Beta</b>)</td>
		<?

		if(!isset($layout_product_livepriceupdate))
		{
			$layout_product_livepriceupdate = 1;
		}
		
		?>
		<td><select name="layout_product_livepriceupdate">
              <?php
														if ($layout_product_livepriceupdate) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> Work only for SELECT dropdown attributes with extra price (Don't available for radio buttons, checkboxes. Work only for left side currencies symbols.)</td>
	</tr>
		<tr>
	  <td>Product image effect:</td>
	  <td>
		<select name="simplegreat_effects_productimage">

              <?php
	      $selected_1 = '';
	      if (!isset($simplegreat_effects_productimage)) {
		$selected_1 = "selected";
	      }
	      
              ?>
              <option value="zoom" <?php echo $selected_1; if($simplegreat_effects_productimage=='zoom'){echo 'selected';} ?>>Mouseover Zoom (default)</option>
              <option value="lightbox" <?php if($simplegreat_effects_productimage=='lightbox'){echo 'lightbox';} ?>>Mouseclick Lightbox</option>
                 
            </select>        
		
          </td>
        </tr>
	<tr>
		<td>Show right sidebar:</td>
		<?

		if(!isset($layout_product_rightsidebar))
		{
			$layout_product_rightsidebar = 1;
		}
		
		?>
		<td><select name="layout_product_rightsidebar">
              <?php
														if ($layout_product_rightsidebar) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select> You can show related products and banner in right sidebar</td>
	</tr>
	<?

		if(!isset($layout_product_rightsidebar_content))
		{
			$layout_product_rightsidebar_content = '';
		}
		
	?>
	<tr>
		<td>Right sidebar content:</td>
		<td><textarea name="layout_product_rightsidebar_content" id="simplegreat-rightsidebar-ckeditor" rows="10" cols="50"><?php
		echo trim($layout_product_rightsidebar_content);
		?></textarea>
		</td>
	</tr>
			<tr>
	  <td>Related products display:</td>
	  <td>
		<select name="simplegreat_layout_related">

              <?php
	      $selected_1 = '';
	      if (!isset($simplegreat_layout_related)) {
		$selected_1 = "selected";
	      }
	      
              ?>
	      <option value="carousel" <?php if($simplegreat_layout_related=='carousel'){echo 'selected';} ?>>Slider In right sidebar (default)</option>
              <option value="tab" <?php echo $selected_1; if($simplegreat_layout_related=='tab'){echo 'selected';} ?>>As Tab</option>
              
     
                 
            </select> How will look related products display at the Product details page.   
		
          </td>
        </tr>
			
		<tr>
		<td>Carousel for additional images:</td>
		<?

		if(!isset($simplegreat_effects_productadditionalcarousel))
		{
			$simplegreat_effects_productadditionalcarousel = 1;
		}
		
		?>
		<td><select name="simplegreat_effects_productadditionalcarousel">
              <?php
														if ($simplegreat_effects_productadditionalcarousel) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>

	
	<tr><td colspan="2" class="tdhead">Products "Sale" badge</td></tr>
		<tr>
		<td><b>Show "Sale" badge for products with discount:</b></td>
		<?
		if(!isset($layout_product_showsalebadge_color))
		{
			$layout_product_showsalebadge_color = 'B29059';
		}
		
		if(!isset($layout_product_showsalebadge))
		{
			$layout_product_showsalebadge = 1;
		}
		
		if(!isset($layout_product_showsalebadge_title))
		{
			$layout_product_showsalebadge_title = "Sale";
		}
		?>
		<td><select name="layout_product_showsalebadge">
              <?php
														if ($layout_product_showsalebadge) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
		<tr>
		<td>Sale badge title:</td>
		<td><input type="text" name="layout_product_showsalebadge_title"
			value="<?php
			echo $layout_product_showsalebadge_title;
			?>"></td>
	</tr>
		<tr>
		<td>Sale badge color:</td>
		<td>#<input type="text" id="layout_product_showsalebadge_color" name="layout_product_showsalebadge_color"
			value="<?php
			echo $layout_product_showsalebadge_color;
			?>"> Default: B29059</td>
	</tr>
	 <tr><td colspan="2" class="tdhead">Product custom Tab</td></tr>
	 <tr>
		<td><b>Enable custom tab:</b></td>
		<td><select name="layout_product_customtab">
              <?php
														if ($layout_product_customtab) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Tab title:</td>
		<td><input type="text" name="layout_product_customtab_title"
			value="<?php
			echo $layout_product_customtab_title;
			?>"></td>
	</tr>
	<?

		if(!isset($layout_product_customtab_content))
		{
			$layout_product_customtab_content = '';
		}
		
	?>
	<tr>
		<td>Tab content:</td>
		<td><textarea name="layout_product_customtab_content" id="simplegreat-customtab-ckeditor" rows="10" cols="50"><?php
		echo trim($layout_product_customtab_content);
		?></textarea>
		</td>
	</tr>
      </table>
	   </div>
	   <div id="tab_general_4">
		<table class="form">
	 <tr>
		<td><b>Enable custom block<br> on contact page:</b></td>
		<td><select name="layout_product_customcontactblock">
              <?php
														if ($layout_product_customcontactblock) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	 <tr>
		<td>Block content:</td>
		<td><textarea name="layout_product_customcontactblock_content" id="simplegreat-customcontactblock-ckeditor" rows="10" cols="50"><?php
		echo trim($layout_product_customcontactblock_content);
		?></textarea><br><br>You can add your shop information or Google Map to display on your contacts page.
		</td>
	</tr>
		</table>
	   </div>
	   
	</div>
	
	
      </div>
      <div id="tab_custommenu">
	<h1>Main menu customization</h1>
	
	 <div id="tabs_3" class="htabs">

	 <a href="#tab_header_1">Custom menu items</a>
	 <a href="#tab_header_2">Custom block</a>
	 <a href="#tab_header_3">Brands menu</a>
	 </div>

   <div class="hcontent">
      
      
      <div id="tab_header_1">
      <p>You can add custom items to your main menu.</p>
	<table class="form">
	<tr>
		<td>Show Blog link in top menu:</td>
		<?

		if(!isset($simplegreat_layout_custommenu_blog))
		{
			$simplegreat_layout_custommenu_blog = 1;
		}
		
		?>
		<td><select name="simplegreat_layout_custommenu_blog">
              <?php
														if ($simplegreat_layout_custommenu_blog) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td><b>Enable custom main menu items:</b></td>
		<td><select name="simplegreat_layout_custommenu">
              <?php
														if ($simplegreat_layout_custommenu) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Custom menu position:</td>
		<td><select name="simplegreat_layout_custommenu_position">
              <?php
														if ($simplegreat_layout_custommenu_position) {
															?>
              <option value="1" selected="selected"><?php
															echo 'Append to OpenCart menu items';
															?></option>
			<option value="0"><?php
															echo 'Show instead of OpenCart menu';
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo 'Append to OpenCart menu items';
															?></option>
			<option value="0" selected="selected"><?php
															echo 'Show instead of OpenCart menu';
															?></option>
              <?php
														}
														?>
            </select> You can replace standard OpenCart menu with Custom Menu or append it</td>
	</tr>
	<tr>
	
		<td>Custom menu item 1:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item1_text" value="<?php echo $simplegreat_layout_custommenu_item1_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item1_url" value="<?php echo $simplegreat_layout_custommenu_item1_url; ?>"></td></tr>
		<tr><td>Custom menu item 2:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item2_text" value="<?php echo $simplegreat_layout_custommenu_item2_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item2_url" value="<?php echo $simplegreat_layout_custommenu_item2_url; ?>"></td></tr>
		<tr><td>Custom menu item 3:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item3_text" value="<?php echo $simplegreat_layout_custommenu_item3_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item3_url" value="<?php echo $simplegreat_layout_custommenu_item3_url; ?>"></td></tr>
		<tr><td>Custom menu item 4:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item4_text" value="<?php echo $simplegreat_layout_custommenu_item4_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item4_url" value="<?php echo $simplegreat_layout_custommenu_item4_url; ?>"></td></tr>
		<tr><td>Custom menu item 5:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item5_text" value="<?php echo $simplegreat_layout_custommenu_item5_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item5_url" value="<?php echo $simplegreat_layout_custommenu_item5_url; ?>"></td></tr>
		<tr><td>Custom menu item 6:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item6_text" value="<?php echo $simplegreat_layout_custommenu_item6_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item6_url" value="<?php echo $simplegreat_layout_custommenu_item6_url; ?>"></td></tr>
		<tr><td>Custom menu item 7:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item7_text" value="<?php echo $simplegreat_layout_custommenu_item7_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item7_url" value="<?php echo $simplegreat_layout_custommenu_item7_url; ?>"></td></tr>
		<tr><td>Custom menu item 8:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item8_text" value="<?php echo $simplegreat_layout_custommenu_item8_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item8_url" value="<?php echo $simplegreat_layout_custommenu_item8_url; ?>"></td></tr>
		<tr><td>Custom menu item 9:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item9_text" value="<?php echo $simplegreat_layout_custommenu_item9_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item9_url" value="<?php echo $simplegreat_layout_custommenu_item9_url; ?>"></td></tr>
		<tr><td>Custom menu item 10:</td><td> Text: <input type="text" name="simplegreat_layout_custommenu_item10_text" value="<?php echo $simplegreat_layout_custommenu_item10_text; ?>"> URL: <input type="text" name="simplegreat_layout_custommenu_item10_url" value="<?php echo $simplegreat_layout_custommenu_item10_url; ?>"></td>
		
	</tr>
	</table>
	
      </div>
      <div id="tab_header_2">
      <p>You can show special block in your main menu with your custom HTML content (text, images, video, etc)</p>
	<table class="form">
	<tr>
		<td><b>Enable custom top menu block:</b></td>
		<td><select name="simplegreat_layout_custommenu_block">
              <?php
														if ($simplegreat_layout_custommenu_block) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Position:</td>
		<td><select name="simplegreat_layout_custommenu_block_position">
              <?php
														if ($simplegreat_layout_custommenu_block_position) {
															?>
              <option value="1" selected="selected">Right</option>
			<option value="0">Left</option>
              <?php
														} else {
															?>
              <option value="1">Right</option>
			<option value="0" selected="selected">Left</option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr><td>Menu item title:</td><td><input type="text" name="simplegreat_layout_custommenu_block_title" value="<?php echo $simplegreat_layout_custommenu_block_title; ?>"></td></tr>
	<tr>
		<td>Block content (HTML):</td><td><textarea name="simplegreat_layout_custommenu_block_content" id="custom_menu_block_content" rows="10" style="width:100%"><?php
		echo trim($simplegreat_layout_custommenu_block_content);
		?></textarea></td></tr>
		<? if (!$simplegreat_layout_custommenu_block_width) {
			
			$simplegreat_layout_custommenu_block_width = 400;
		
		}
		?>
		<tr><td>Block width (px)<br>Recommended: <b><?=$simplegreat_layout_custommenu_block_width;?></b></td><td><input type="text" name="simplegreat_layout_custommenu_block_width" value="<?php echo $simplegreat_layout_custommenu_block_width; ?>"></td></tr>
	</tr>
	</table>
      </div>
      
      <div id="tab_header_3">
      <p>You can show manufacturers list in your top categories menu. You can manage your manufacturers list <a href="index.php?route=catalog/manufacturer">here</a>.</p>
	<table class="form">
	<tr>
		<td><b>Enable brands menu:</b></td>
		<td><select name="simplegreat_layout_brandsmenu">
              <?php
														if ($simplegreat_layout_brandsmenu) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Show brands images in menu:</td>
		<td><select name="simplegreat_layout_brandsmenu_showimages">
              <?php
														if ($simplegreat_layout_brandsmenu_showimages) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
	</table>
      </div>
   </div>
	
	
	
      </div>
      <!-- end tab layout -->
      <div id="tab_customcode">
	<h1>Custom CSS/Javascript code</h1>
	<p><b>Note:</b> this place for advanced users only. If you write wrong code here you can break theme work and design.</p>
	<table class="form">
	<tr>
		<td><b>Custom CSS code:</b></td>
		<td><textarea name="simplegreat_custom_css" rows="10" style="width:100%"><?php
		echo trim($simplegreat_custom_css);
		?></textarea></td>
	</tr>
	<tr>
		<td><b>Custom JavaScript code:</b></td>
		<td><textarea name="simplegreat_custom_js" rows="10" style="width:100%"><?php
		echo trim($simplegreat_custom_js);
		?></textarea></td>
	</tr>
	</table>
      </div>
      <!-- end tab code -->
<? if (!$simplegreat_fullwidthslider) {
			
	$simplegreat_fullwidthslider = 0;

}
?>
<div id="tab_slider">
	<h1>Revolution slider configuration</h1>
	<p><b>Note:</b> You can turn off Revolution slider and use simple Flexslider (Extensions > Modules > Slideshow) instead.</p>
	<table class="form">
	<tr>
		<td><b>Enable Revolution slider on HomePage:</b></td>
		<td><select name="simplegreat_slider_enable">
              <?php
														if ($simplegreat_slider_enable) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td><b>Slider width:</b></td>
		<td><select name="simplegreat_fullwidthslider">
              <?php
														if ($simplegreat_fullwidthslider) {
															?>
              <option value="1" selected="selected"><?php
															echo 'Fullwidth (100%)';
															?></option>
			<option value="0"><?php
															echo 'Boxed (980px)';
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo 'Fullwidth (100%)';
															?></option>
			<option value="0" selected="selected"><?php
															echo 'Boxed (980px)';
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td><b>Autoplay:</b></td>
		<td><select name="simplegreat_slider_autoplay">
              <?php
														if ($simplegreat_slider_autoplay) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
	  <td>Autoplay delay (msec):</td>
	  <td>
	      <?php
	    
	      if (!isset($simplegreat_slider_autoplay_delay)) {
		$simplegreat_slider_autoplay_delay = 9000;
	      }
	      
              ?>
	      
		<input name="simplegreat_slider_autoplay_delay" style="width:40px" value="<?=$simplegreat_slider_autoplay_delay?>"> Default value: 9000
		       
          </td>
        </tr>
	
	
	</table>You can add slides code in the <a href="index.php?route=module/welcome">SimpleGreat Content Manager module</a> by theme Documentation
      </div>
      <!-- end tab slider -->
<div id="tab_contact">

<h1>Footer customization</h1>
  
	 
	    
 <div id="tabs_2" class="htabs">
	
	 <a href="#tab_footer_2">Contact info</a>
	 <a href="#tab_footer_3">Facebook</a>
	 <a href="#tab_footer_4">Twitter</a>
	 <a href="#tab_footer_7">Social icons</a>
	 <a href="#tab_footer_5">Payment Icons</a>
	 <a href="#tab_footer_6">Powered by</a>
	 </div>

   <div class="hcontent">
   
 
      <div id="tab_footer_2">
      <table class="form">
	
	<tr><td colspan="2"> Fill in contact details you want to be displayed in your custom footer. If you don't want some of contact details to be displayed, just leave these fields empty</td></tr>
	
		
	<tr>
		<td>Address:</td>
		<td><input type="text" name="custom_address"
			value="<?php
			echo $custom_address;
			?>"></td>
	</tr>
	
	<tr>
		<td>Phone 1:</td>
		<td><input type="text" name="telephone1"
			value="<?php
			echo $telephone1;
			?>"></td>
	</tr>

	<tr>
		<td>Phone 2:</td>
		<td><input type="text" name="telephone2"
			value="<?php
			echo $telephone2;
			?>"></td>
	</tr>
	
		<tr>
		<td>Fax</td>
		<td><input type="text" name="fax"
			value="<?php
			echo $fax;
			?>"></td>
	</tr>
	
	
	<tr>
		<td>E-mail 1:</td>
		<td><input type="text" name="email1"
			value="<?php
			echo $email1;
			?>"></td>
	</tr>

	<tr>
		<td>E-mail 2:</td>
		<td><input type="text" name="email2"
			value="<?php
			echo $email2;
			?>"></td>
	</tr>
	
	
	

</table>
      </div>
      <div id="tab_footer_3">
      <table class="form">
	
	<tr>
		<td><b>Facebook float box Status:</b></td>
		<td><select name="facebook_status">
              <?php
														if ($facebook_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td><b>Show Facebook icon in footer:</b></td>
		<td><select name="facebook_footer_status">
              <?php
														if ($facebook_footer_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	<tr>
		<td>Facebook page ID:<br>(Sample ID: 115403961948855)</td>
		<td><input type="text" name="facebook_id"
			value="<?php
			echo $facebook_id;
			?>"> You can get your facebook page ID by page url <a target="_blank" href="http://findmyfacebookid.com/">here</a>.</td>
	</tr>
	<tr>
			
		<td>
            <label style="width: 110px">Facebook likebox position:</label></td><td>
            <select name="facebook_float_position">
              
              <option value="right"<?php if($facebook_float_position == 'right') echo ' selected="selected"';?>>Right</option>
	      <option value="left"<?php if($facebook_float_position == 'left') echo ' selected="selected"';?>>Left</option>
            </select></td>
         </tr>

	
</table>
      </div>
      <div id="tab_footer_4">
      <table class="form">
	<tr>
		<td><b>Twitter tweets slider Status:</b></td>
		<td><select name="twitter_column_status">
              <?php
														if ($twitter_column_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
<tr>
		<td><b>Show Twitter icon in footer:</b></td>
		<td><select name="twitter_footer_status">
              <?php
														if ($twitter_footer_status) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1"><?php
															echo $text_enabled;
															?></option>
			<option value="0" selected="selected"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
	
		<tr>
			
		<td>
            <label style="width: 110px">Tweets count:</label></td><td>
            <select name="twitter_number_of_tweets">
              <option value="10"<?php if($twitter_number_of_tweets == '10') echo ' selected="selected"';?>>10</option>
              <option value="25"<?php if($twitter_number_of_tweets == '25') echo ' selected="selected"';?>>25</option>
              <option value="50"<?php if($twitter_number_of_tweets == '50') echo ' selected="selected"';?>>50</option>
            </select></td>
         </tr>

          <tr><td>
            <label style="width: 110px">Twitter username: </label></td>
            <td><input type="text" name="twitter_username" value="<?php echo $twitter_username; ?>" /></td>
          </tr>
		
</table>
      </div>
      
      <div id="tab_footer_7">
	Leave url field empty if you don't want to display this social icon in footer
      <table class="form">
		
	<tr>

		<td>Facebook: </td>
		<td>
 Use "Facebook" tab to configurate this icon</td>
	</tr>
	
	<tr>

		<td>Twitter: </td>
		<td>
 Use "Twitter" tab to configurate this icon</td>
	</tr>
	
	
	
	<tr>

		<td>Skype username: </td>
		<td>
 
<input type="text" name="skype" 
			value="<?php
			echo $skype;
			?>"></td>
	</tr>
	<tr>

		<td>Pinterest url: </td>
		<td>

<input type="text" name="social_icons_pinterest_url" 
			value="<?php
			echo $social_icons_pinterest_url;
			?>"></td>
	</tr>
	<tr>

		<td>Youtube url: </td>
		<td>

<input type="text" name="social_icons_youtube_url" 
			value="<?php
			echo $social_icons_youtube_url;
			?>"></td>
	</tr>
	<tr>

		<td>Vimeo url: </td>
		<td>

<input type="text" name="social_icons_vimeo_url" 
			value="<?php
			echo $social_icons_vimeo_url;
			?>"></td>
	</tr>
	<tr>

		<td>Tumblr url: </td>
		<td>

<input type="text" name="social_icons_tumblr_url" 
			value="<?php
			echo $social_icons_tumblr_url;
			?>"></td>
	</tr>
	<tr>

		<td>RSS url: </td>
		<td>

<input type="text" name="social_icons_rss_url" 
			value="<?php
			echo $social_icons_rss_url;
			?>"></td>
	</tr>
	<tr>

		<td>Google+ url: </td>
		<td>

<input type="text" name="social_icons_googleplus_url" 
			value="<?php
			echo $social_icons_googleplus_url;
			?>"></td>
	</tr>
	<tr>

		<td>Flickr url: </td>
		<td>

<input type="text" name="social_icons_flickr_url" 
			value="<?php
			echo $social_icons_flickr_url;
			?>"></td>
	</tr>
	
</table>
      </div>
      
      <div id="tab_footer_5">
      <table class="form">
	<tr>
		<td><b>Show payment icons:</b></td>
		<td><select name="payment_icons_enabled">
              <?php
														if ($payment_icons_enabled) {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														} else {
															?>
              <option value="1" selected="selected"><?php
															echo $text_enabled;
															?></option>
			<option value="0"><?php
															echo $text_disabled;
															?></option>
              <?php
														}
														?>
            </select></td>
	</tr>
	
	<tr>
	<? if ($payment_icons_paypal) {
		$checked = ' checked';
	}
	else
	{
		$checked = '';
	}
	?>
		<td>PayPal: </td>
		<td><label>
<input type="checkbox" name="payment_icons_paypal" <?=$checked;?>>
Show
</label>
<img src="../catalog/view/theme/simplegreat/image/payment/PayPal.png" align="absmiddle"> url: 
<input type="text" name="payment_icons_paypal_url" 
			value="<?php
			echo $payment_icons_paypal_url;
			?>"></td>
	</tr>
	
	<tr>
	<? if ($payment_icons_visa) {
		$checked = ' checked';
	}
	else
	{
		$checked = '';
	}
	?>
		<td>Visa: </td>
		<td><label>
<input type="checkbox" name="payment_icons_visa" <?=$checked;?>>
Show
</label>
<img src="../catalog/view/theme/simplegreat/image/payment/Visa.png" align="absmiddle"> url: 
<input type="text" name="payment_icons_visa_url" 
			value="<?php
			echo $payment_icons_visa_url;
			?>"></td>
	</tr>
		
	<tr>
	<? if ($payment_icons_mastercard) {
		$checked = ' checked';
	}
	else
	{
		$checked = '';
	}
	?>
		<td>MasterCard: </td>
		<td><label>
<input type="checkbox" name="payment_icons_mastercard" <?=$checked;?>>
Show
</label>
<img src="../catalog/view/theme/simplegreat/image/payment/MasterCard.png" align="absmiddle"> url: 
<input type="text" name="payment_icons_mastercard_url" 
			value="<?php
			echo $payment_icons_mastercard_url;
			?>"></td>
	</tr>		
		
	<tr>
	<? if ($payment_icons_discover) {
		$checked = ' checked';
	}
	else
	{
		$checked = '';
	}
	?>
		<td>Discover: </td>
		<td><label>
<input type="checkbox" name="payment_icons_discover" <?=$checked;?>>
Show
</label>
<img src="../catalog/view/theme/simplegreat/image/payment/Discover.png" align="absmiddle"> url: 
<input type="text" name="payment_icons_discover_url" 
			value="<?php
			echo $payment_icons_discover_url;
			?>"></td>
	</tr>

	<tr>
	<? if ($payment_icons_amex) {
		$checked = ' checked';
	}
	else
	{
		$checked = '';
	}
	?>
		<td>Amex: </td>
		<td><label>
<input type="checkbox" name="payment_icons_amex" <?=$checked;?>>
Show
</label>
<img src="../catalog/view/theme/simplegreat/image/payment/AmericanExpress.png" align="absmiddle"> url: 
<input type="text" name="payment_icons_amex_url" 
			value="<?php
			echo $payment_icons_amex_url;
			?>"></td>
	</tr>
	
	
	  <tr>   
           <td>Upload payment icon: </br>
           <?php 
           if(isset($dx_paymenticon_custom) && $dx_paymenticon_custom == '1'){
           	 ?>
           	 <input type="radio"  name="dx_paymenticon_custom" value="1" CHECKED/> Yes<br />
			<input type="radio" name="dx_paymenticon_custom" value="0"> No
           	<?php 
           }     else {   ?>
           <input type="radio"  name="dx_paymenticon_custom" value="1" /> Yes<br />
			<input type="radio" name="dx_paymenticon_custom" value="0" CHECKED> No
         <?php   } ?>
	 <br><br><a onclick="image_upload('dx_paymenticon_image', 'simplegreat_preview_payment');">Change image</a>
           </td>
              <td>
             
              <input type="hidden" name="dx_paymenticon_image" value="<?php echo $dx_paymenticon_image; ?>" id="dx_paymenticon_image" />
                <img src="<?php echo $simplegreat_preview_payment; ?>" alt="" id="simplegreat_preview_payment" class="image" onclick="image_upload('dx_paymenticon_image', 'simplegreat_preview_payment');" align="absmiddle" />
		 url: 
<input type="text" name="dx_paymenticon_custom_url" 
			value="<?php
			echo $dx_paymenticon_custom_url;
			?>"></td>
	    
        </tr>
	
</table>
      </div>
      
      <div id="tab_footer_6">
      <table class="form">	
	<tr>
		<td>Powered by text:</td>
		<td><textarea name="footer_powered_text" id="simplegreat-powered-ckeditor" rows="10" cols="50"><?php
		echo trim($footer_powered_text);
		?></textarea>
		</td>
	</tr>
	
</table>
      </div>
      
  </div>

	

</div>


<div id="theme_support">
	<h1>SimpleGreat theme for Open Cart 1.5.5. <a href="http://simplegreat-oc.any-themes.com/Documentation/release-history.html" target="_blank">Theme versions changelogs</a></h1>
	<p style="font-weight:bold">Theme designed and developed by <a href="http://themeforest.net/user/dedalx">dedalx</a>.</p>
<p>Thank you for buying my theme! If you have any questions or problems with my item you need submit a ticket <a href="http://support.any-themes.com/">here</a>.</p>
<p>If you like my theme dont forget to rate theme with stars (you can do it in your Downloads tab, inside your ThemeForest profile. Just click on stars! This little thing helps me to make new theme updates! Thank you!</p>
<p>
Now my personal blog available at <a href="http://dedalx.com">dedalx.com</a>!
</p>

<h3><a href="https://twitter.com/dedalx" target="_blank">Follow me on twitter</a> or <a href="https://www.facebook.com/dedalxDev" target="_blank">join my facebook page</a> to get noticed about all theme updates and news!</h3>
<br>
<a href="http://codecanyon.net/user/dedalx/follow/"><img src="http://any-themes.com/images/followcc.png"/></a> <a href="http://codecanyon.net/feeds/users/dedalx"><img src="http://any-themes.com/images/rsscc.png"/></a><br>
<a href="http://themeforest.net/user/dedalx/follow/"><img src="http://any-themes.com/images/followtf.png"/></a> <a href="http://themeforest.net/feeds/users/dedalx"><img src="http://any-themes.com/images/rsstf.png"/></a><br>
<a href="http://graphicriver.net/user/dedalx/follow/"><img src="http://any-themes.com/images/followgr.png"/></a> <a href="http://graphicriver.net/feeds/users/dedalx"><img src="http://any-themes.com/images/rssgr.png"/></a><br>
<a href="https://twitter.com/dedalx"><img src="http://any-themes.com/images/followtwitter.png"/></a> <a href="http://www.facebook.com/dedalxDev"><img src="http://any-themes.com/images/followfb.png"/></a><br>
<a href="http://instagram.com/dedalx"><img src="http://any-themes.com/images/followig.png"/></a>
</div>


   </div>
<div class="save-buttons"><a onclick="$('#form').submit();"><?php echo $button_save; ?> theme settings</a><a onclick="location = '<?php echo $cancel; ?>';"><?php echo $button_cancel; ?></a></div>
    </form>
  </div>
</div>

<script type="text/javascript"><!--
$('#tabs a').tabs();

$('#tabs_1 a').tabs();
$('#tabs_2 a').tabs();
$('#tabs_3 a').tabs();
$('#tabs_4 a').tabs();
//--></script>


<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="view/javascript/jquery/ckeditor.jquery.js"></script> 


<script type="text/javascript"><!--
$('#simplegreat-about-ckeditor').ckeditor();
$('#simplegreat-powered-ckeditor').ckeditor();
$('#custom_menu_block_content').ckeditor();
$('#simplegreat-customtab-ckeditor').ckeditor();
$('#simplegreat-customcontactblock-ckeditor').ckeditor();

$('#simplegreat-customblock-ckeditor').ckeditor();
$('#simplegreat-rightsidebar-ckeditor').ckeditor();

//--></script> 

<script type="text/javascript"><!--
function image_upload(field, preview) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>',
					type: 'GET',
					data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						
						$('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};

/*
 * Image preview script 
 */
 
this.imagePreview = function(){	
	/* CONFIG */
		
		xOffset = 10;
		yOffset = 30;
		
		// these 2 variable determine popup's distance from the cursor
		// you might want to adjust to get the right result
		
	/* END CONFIG */
	$("a.preview").hover(function(e){
		
		this.t = this.title;
		this.title = "";	
		var c = (this.t != "") ? "<br/>" + this.t : "";
		$("body").append("<p id='preview' style='display:none;'><img src='"+ this.href +"' alt='Image preview' />"+ c +"</p>");								 
		$("#preview")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px")
			.css("position","absolute")
			.fadeIn();						
    },
	function(){
		this.title = this.t;	
		$("#preview").remove();
    });	
	$("a.preview").mousemove(function(e){
		$("#preview")
			.css("top",(e.pageY - xOffset) + "px")
			.css("left",(e.pageX + yOffset) + "px");
	});			
};


// starting the script on page load
$(document).ready(function(){
	imagePreview();
});
//--></script> 
<?php echo $footer; ?>
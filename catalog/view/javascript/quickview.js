function resetOverlays() {
      var dialogs = $("div.ui-dialog");
      if(dialogs.length == 0)
      {
        $(".ui-widget-overlay").remove();
      }
}

function minicartDetailPopup(){
	
	$('#cart').load('index.php?route=module/cart #cart > *').hide().fadeIn('slow');
	
}

function ajaxLoading () {
    // Called directly with HTML
	$.colorbox({opacity: 0.4, html:'<div id="loadingdialog" style="display:block; min-width:300px;min-height:100px;"><span class="ajaxloading"><style>#cboxLoadingOverlay {display:block !important;} #cboxClose {display:none !important;} </style></span></div>',initialWidth:300,initialHeight:100,width:'auto',height:'auto',
	overlayClose: true,
	title:function(){
		$('#cboxLoadingOverlay').html('<style>#cboxLoadingOverlay {display:block !important;}</style>');
		$('#cboxLoadingGraphic').html('<style>#cboxLoadingGraphic {display:block !important;}</style>');
						
	},
	onClosed:function(){ 
		$('#cboxLoadingOverlay').html('');
		$('#cboxLoadingGraphic').html('');
	}
	});      
        
}

function ajaxDialog(url,c) {
		// Called directly, without assignment to an element:
		$.colorbox({
			href:url,
                        opacity: 0.4,
			initialWidth:300,
			initialHeight:100,
			width:780,
		
			overlayClose: true,
			onOpen:function(){ 
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onLoad:function(){
				$('#colorbox').addClass('quickbox');
				$('#cboxClose').hide();
			},
			onClosed:function(){ 
				$('#cboxLoadingOverlay').html('');
				$('#cboxLoadingGraphic').html('');
			},
			onComplete:function(){ 
				$('.colorbox').colorbox({
    				rel:'colorbox',
					opacity: 0.1,
					width:'auto',
					height:'auto',
					current:false,
					overlayClose: false,
					title:function(){
						$('#cboxLoadingOverlay').html('<style>#cboxLoadingOverlay {display:none !important;}</style>');
						$('#cboxLoadingGraphic').html('<style>#cboxLoadingGraphic {display:none !important;}</style>');
						
					},
					onClosed:function(){ 
						$('#cboxLoadingOverlay').html('');
						$('#cboxLoadingGraphic').html('');
					}
				});
				$('#cboxClose').show();
			}
		});
        return false;
}

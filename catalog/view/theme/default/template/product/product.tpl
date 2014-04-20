    <?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($thumb) { ?>
  <div class="image nothreedmode" style="text-align: center;border:1px solid #eee;margin-bottom: 5px;padding-top:13px;width:100%;height:400px;">
      <a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox">
          <img class="display_image" height='375px' src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
      </a>
  </div>
  <div class="image threedmode" style="display:none;text-align: center;border:1px solid #eee;margin-bottom: 5px;padding-top:13px;width:100%;height:400px;" isloaded='false'>
      <canvas id="cv" style="border: 1px solid;width:500px;height:375px;" onclick="showthreedimage();" ></canvas>
  </div>
  <?php } ?>
  <div class="product-info">
  <div class="left">
    <?php if($thumb || $images) { ?>
      <?php if ($images || $threed_object) { ?>
      <div class="image-additional">

        <!--<?php if($thumb) { ?>
          <a onclick="thumbsubimage();" title="<?php echo $heading_title; ?>"><img width='74px' height='74px' src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
        <?php } ?>-->

        <?php if ($images) { ?>
          <?php foreach ($images as $image) { ?>
            <a class='thumb_image' onclick="shownothreedimage();" popupurl="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
          <?php } ?>
        <?php } ?>

        <?php if($threed_object) { ?>
          <a onclick="showthreedimage();" title="3D Display"><img width='74px' height='74px' src="<?php echo $threed_display; ?>" title="3D Display" /></a>
        <?php } ?>

      </div>
      <?php } ?>
    <?php } ?>
  </div>
    <div class="right">
      <div class="description">
        <span>名 称：</span> <?php echo $heading_title; ?><br />
        <?php if ($manufacturer) { ?>
        <span><?php echo $text_manufacturer; ?></span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a><br />
        <?php } ?>
        <span><?php echo $text_model; ?></span> <?php echo $model; ?><br />
        <!--<?php if ($reward) { ?>
        <span><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>-->
        <span><?php echo $text_stock; ?></span> <?php echo $stock; ?><br /><br />
        <!--<img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />-->
      </div>
      <?php if ($price) { ?>
      <div class="price" <?php if(!$product_type) echo "style='display:none;'"; ?>><?php echo $text_price; ?>
        <?php if (!$special) { ?>
        <?php echo $price; ?>
        <?php } else { ?>
        <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
        <?php } ?>
        <br />
        <?php if ($tax) { ?>
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span><br />
        <?php } ?>
        <?php if ($points) { ?>
        <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
        <?php } ?>
        <?php if ($discounts) { ?>
        <br />
        <div class="discount">
          <?php foreach ($discounts as $discount) { ?>
          <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
          <?php } ?>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($profiles): ?>
      <div class="option">
          <h2><span class="required">*</span><?php echo $text_payment_profile ?></h2>
          <br />
          <select name="profile_id">
              <option value=""><?php echo $text_select; ?></option>
              <?php foreach ($profiles as $profile): ?>
              <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
              <?php endforeach; ?>
          </select>
          <br />
          <br />
          <span id="profile-description"></span>
          <br />
          <br />
      </div>
      <?php endif; ?>
      <?php if($product_type == '0') { ?>
      <div class="options">
          <!--<h2>选项</h2>
          <br />-->
          <b>材质:</b>&nbsp;&nbsp;
          <select name='material' style="width:120px;">
              <?php foreach($material as $key => $item) { ?>
                <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br /><br />
          <b>精度:</b>&nbsp;&nbsp;
          <select name='precision' style="width:120px;">
              <?php foreach($precision as $key => $item) { ?>
              <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br /><br />
          <b>颜色:</b>&nbsp;&nbsp;
          <select name='product_color' style="width:120px;">
              <?php foreach($product_color as $key => $item) { ?>
              <option value="<?php echo $key; ?>"><?php echo $item['name']; ?></option>
              <?php } ?>
          </select>
          <br />
      </div>
      <?php } ?>
      <div class="cart">
        <div><?php echo $text_qty; ?>
          <input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />
          <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
          &nbsp;
          <?php if(($volume && $product_type == '0') || ($product_type != '0')) { ?>
            <input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button" />
          <?php } else { ?>
            <input type="button" value="无此产品体积" id="button-cart" class="" disabled />
          <?php } ?>
          <!--<span>&nbsp;&nbsp;<?php echo $text_or; ?>&nbsp;&nbsp;</span>
          <span class="links">
            <a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a><br />
            <a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
          </span>-->
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      <?php if ($review_status) { ?>
      <div class="review" style="display:none;">
        <div><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
        <div class="share"><!-- AddThis Button BEGIN -->
          <div class="addthis_default_style"><a class="addthis_button_compact"><?php echo $text_share; ?></a> <a class="addthis_button_email"></a><a class="addthis_button_print"></a> <a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a></div>
          <script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
          <!-- AddThis Button END --> 
        </div>
      </div>
      <?php } ?>
    </div>
  </div>
  <div id="tabs" class="htabs"><a href="#tab-description"><?php echo $tab_description; ?></a>
    <?php if ($attribute_groups) { ?>
    <a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
    <?php } ?>
    <?php if ($review_status) { ?>
    <a href="#tab-review"><?php echo $tab_review; ?></a>
    <?php } ?>
    <?php if ($products) { ?>
    <!--<a href="#tab-related"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</a>-->
    <?php } ?>
  </div>
    <div style="height:0; line-height:0; width:100%; overflow: hidden; clear:both"></div>
  <div id="tab-description" class="tab-content"><?php echo $description; ?></div>
  <?php if ($attribute_groups) { ?>
  <div id="tab-attribute" class="tab-content">
    <table class="attribute">
      <?php foreach ($attribute_groups as $attribute_group) { ?>
      <thead>
        <tr>
          <td colspan="2"><?php echo $attribute_group['name']; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <tr>
          <td><?php echo $attribute['name']; ?></td>
          <td><?php echo $attribute['text']; ?></td>
        </tr>
        <?php } ?>
      </tbody>
      <?php } ?>
    </table>
  </div>
  <?php } ?>
  <?php if ($review_status) { ?>
  <div id="tab-review" class="tab-content">
    <div id="review"></div>
    <h2 id="review-title"><?php echo $text_write; ?></h2>
    <b><?php echo $entry_name; ?></b><br />
    <input type="text" name="name" value="" />
    <br />
    <br />
    <b><?php echo $entry_review; ?></b>
    <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
    <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
    <br />
    <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
    <input type="radio" name="rating" value="1" />
    &nbsp;
    <input type="radio" name="rating" value="2" />
    &nbsp;
    <input type="radio" name="rating" value="3" />
    &nbsp;
    <input type="radio" name="rating" value="4" />
    &nbsp;
    <input type="radio" name="rating" value="5" />
    &nbsp;<span><?php echo $entry_good; ?></span><br />
    <br />
    <b><?php echo $entry_captcha; ?></b><br />
    <input type="text" name="captcha" value="" />
    <br />
    <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
    <br />
    <div class="buttons">
      <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
    </div>
  </div>
  <?php } ?>
  <?php if ($products) { ?>
  <div id="tab-related" class="tab-content" style="display:none;">
    <div class="box-product">
      <?php foreach ($products as $product) { ?>
      <div>
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
        <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
        <?php if ($product['rating']) { ?>
        <div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
        <?php } ?>
        <a onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button"><?php echo $button_cart; ?></a></div>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php if ($tags) { ?>
  <div class="tags"><b><?php echo $text_tags; ?></b>
    <?php for ($i = 0; $i < count($tags); $i++) { ?>
    <?php if ($i < (count($tags) - 1)) { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
    <?php } else { ?>
    <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--

$('select[name="profile_id"], input[name="quantity"]').change(function(){
    $.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
		dataType: 'json',
        beforeSend: function() {
            $('#profile-description').html('');
        },
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
            
			if (json['success']) {
                $('#profile-description').html(json['success']);
			}	
		}
	});
});
    
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
                
                if (json['error']['profile']) {
                    $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;margin-bottom: 5px;margin-top:5px;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
					
				$('#cart-total').html(json['total']);

                $('#shoppingCartNum').html(json['cart_products']);

				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
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

    $(function(){
        $(".thumb_image").click(function(){
           var url = $(this).attr('popupurl');
            $(".display_image").attr('src',url);
        });
    });

//--></script> 
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	if ($.browser.msie && $.browser.version == 6) {
		$('.date, .datetime, .time').bgIframe();
	}

	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
	$('.datetime').datetimepicker({
		dateFormat: 'yy-mm-dd',
		timeFormat: 'h:m'
	});
	$('.time').timepicker({timeFormat: 'h:m'});
});
//--></script>
<?php if($threed_object) { ?>
<script type="text/javascript">

    function showthreedimage() {

        var isloaded = $(".threedmode").attr("isloaded");

        if(isloaded == 'false') {

            canvas = document.getElementById('cv');
            viewer = new JSC3D.Viewer(canvas);
            viewer.setParameter('SceneUrl', '<?php echo $threed_object; ?>');
            viewer.setParameter('InitRotationX', 20);
            viewer.setParameter('InitRotationY', 20);
            viewer.setParameter('InitRotationZ', 0);
            viewer.setParameter('ModelColor', '#CAA618');
            viewer.setParameter('BackgroundColor1', '#FFFFFF');
            viewer.setParameter('BackgroundColor2', '#383840');
            viewer.setParameter('RenderMode', 'smooth');
            viewer.setParameter('Definition', 'standard');
            viewer.init();

            viewer.update();

            logoTimerID = setInterval(function(){viewer.rotate(0, 10, 0);viewer.update();}, 200);
            viewer.enableDefaultInputHandler(false);
            setTimeout(function(){viewer.enableDefaultInputHandler(true); loadModel();}, 8000);

            $(".threedmode").attr("isloaded","true");

        }else{
            clearInterval(logoTimerID);
        }

        $(".nothreedmode").css("display","none");
        $(".threedmode").css("display","");

    }

    function shownothreedimage() {

        $(".nothreedmode").css("display","");
        $(".threedmode").css("display","none");

    }

    /*function thumbsubimage() {

        $(".nothreedmode").css("display","");
        $(".threedmode").css("display","none");
        $("#image").trigger("click");

    }*/
</script>
<?php } ?>
    <div class="item fm-contents">
        <div class="item-head">
            <h3 class="item-title fl">产品展示图</h3>
            <a class="more fr" href="#">
                查看更多
            </a>
        </div>
        <ul class="product-ul">
            <li>
                <a href="index.php?route=product/product&path=20&product_id=30">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
            <li>
                <a href="index.php?route=product/product&path=20&product_id=47">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
            <li>
                <a href="index.php?route=product/product&path=20&product_id=28">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
            <li>
                <a href="index.php?route=product/product&path=20&product_id=48">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
            <li>
                <a href="index.php?route=product/product&path=20&product_id=43">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
            <li>
                <a href="index.php?route=product/product&path=20&product_id=49">
                    <img src="/catalog/view/theme/default/image/feimao/product_item.png" />
                </a>
            </li>
        </ul>
    </div>
<?php echo $footer; ?>
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
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/style.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
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
</head>
<body>
<!--头部——开始-->
<div class="header ie6fixedTL" <?php if($headershow==false) echo "style='display:none'";?>>
    <div class="header_top clearfix">
        <ul class="top_menul jvf_fl clearfix">
            <li class="header_top_mubg left_mu5">
                <a href="<?php echo $shopping_cart; ?>">
                    <em></em>购物车<span>(<span id="shoppingCartNum"><?php echo $cart_products; ?></span>)</span>
                </a>
            </li>
        </ul>
        <ul class="top_menur jvf_fr clearfix">
            <?php if(!$logged) { ?>
            <li>请您先</li>
            <li><a style="padding-left: 0px;" href="/index.php?route=account/login">[&nbsp;登录&nbsp;]</a></li>
            <li>或者</li>
            <li><a style="padding-left: 0px;" href="/index.php?route=account/register">[&nbsp;注册&nbsp;]</a></li>
            <?php } else { ?>
            <li><a href="<?php echo $account; ?>">[&nbsp;我的账户&nbsp;]</a></li>
            <li><a href="<?php echo $logout; ?>">[&nbsp;退出&nbsp;]</a></li>
            <?php } ?>
        </ul>
    </div>

    <div class="header_con clearfix">
        <div class="header_logo jvf_fl">
            <h1><a href="<?php echo $home; ?>"><img src="/catalog/view/theme/default/image/531fd1cfa2fef.png" alt="肥猫网" /></a></h1>
        </div>
        <div class="jvf_fl header_con_menu">
            <ul>
                <li ><a href="<?php echo $homepage; ?>" >首页</a></li>
                <li ><a href='index.php?route=information/information&information_id=4'>关于肥猫</a></li>
                <li ><a href="<?php echo $model; ?>" >模型库</a></li>
                <li ><a href='index.php?route=information/information&information_id=7'>打印机展厅</a></li>
                <li ><a href="<?php echo $printer; ?>" >打印商城</a></li>
                <li ><a href='index.php?route=information/information&information_id=8'>加入我们</a></li>
                <li ><a href='index.php?route=information/information&information_id=9'>肥猫学院</a></li>
                <li ><a href='index.php?route=information/information&information_id=10'>合作项目</a></li>
                <li ><a href='index.php?route=account/account'>会员俱乐部</a></li>
                <li ><a href='index.php?route=information/information&information_id=11'>客服中心</a></li>
                <li ><a href='index.php?route=information/information&information_id=12'>联系我们</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部——结束-->

<div id="container">
<div id="header" style="display:none">
  <?php if ($logo) { ?>
  <div id="logo">
      <a href="<?php echo $home; ?>">
          <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" />
      </a>
  </div>
  <?php } ?>
  <?php echo $language; ?>
  <?php echo $currency; ?>
  <div id="search">
    <div class="button-search"></div>
    <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
  </div>
  <div id="welcome">
    <?php if (!$logged) { ?>
    <?php echo $text_welcome; ?>
    <?php } else { ?>
    <?php echo $text_logged; ?>
    <?php } ?>
  </div>
  <div class="links"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a>
      <a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
      <a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
      <a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
      <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></div>
</div>
    <!--
<?php if ($categories) { ?>
<div id="menu" style="display:none">
  <ul>
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
</div>
<?php } ?>
    -->
</div>
<div class="banner-height" <?php if($headershow==false) echo "style='display:none'";?>></div>
<?php if ($error) { ?>
<div class="warning">
    <?php echo $error ?>
    <img src="catalog/view/theme/default/image/close.png" alt="" class="close" />
</div>
<?php } ?>
<div id="notification"></div>
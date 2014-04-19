<?php echo $header; ?>

<div class="print-type-menu fm-contents" >

<div class="type-single active">普通版</div>
<div class="type-single">专业版</div>

</div>

<div class="print-type fm-contents">

    <div class="type-content">
        <ul>
            <li>
                <div class="type-logo">

                </div>
                <div class="type-user">
                    <a href="index.php?route=static/static/process1">学生用户 >></a>
                </div>
                <div class="type-name">
                    学生用品打印
                </div>
            </li>
            <li>
                <div class="type-logo"></div>
                <div class="type-user"><a href="index.php?route=static/static/process1">普通用户 >></a></div>
                <div class="type-name">普通用户打印</div>
            </li>
        </ul>
    </div>

    <div class="type-content" style="display:none">

        <ul>
            <li>
                <div class="type-logo">

                </div>
                <div class="type-user"><a href="index.php?route=static/static/process1">专业用户 >></a></div>
                <div class="type-name">艺术品打印</div>
            </li>
            <li>
                <div class="type-logo"></div>
                <div class="type-user"><a href="index.php?route=static/static/process1">工业用户 >></a></div>
                <div class="type-name">工业品打印</div>
            </li>
        </ul>

    </div>

</div>

<script>
    $('.type-single').click( function( ){

        var ind = $(this).index();
        $('.type-single').removeClass('active');

        $(this).addClass('active');

        $('.type-content').hide();
        $('.type-content').eq( ind ).show();

    });

</script>
<div class="item fm-contents">
    <div class="item-head">
        <h3 class="item-title">打印流程图</h3>
    </div>


    <ul class="process-ul">
        <li>
            <a  class="process-item no-a"></a>
        </li>
        <li >
            <div class="pointer"> </div>
        </li>
        <li>
            <a class="process-item no-b"></a>
        </li>
        <li >
            <div class="pointer"> </div>
        </li>
        <li>
            <a class="process-item no-c"></a>
        </li>
        <li >
            <div class="pointer"> </div>
        </li>
        <li>
            <a class="process-item no-d"></a>
        </li>
        <li >
            <div class="pointer"> </div>
        </li>
        <li>
            <a class="process-item no-e"></a>
        </li>
    </ul>

</div>



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
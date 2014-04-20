<?php echo $header; ?>


<div class="fm-contents border-step-gray padding-20">

    <div class="fm-process">

        <div class="nav ">

            <div class="title fl">
                第一步 : 模型制作
            </div>
            <div class="last-step fr" style="display: none"><< 上一步</div>

        </div>

        <div class="step-content">

            <div class='first-step '>
                <div class="step-logo no-a"> </div>
                <div class="step-title">新建模型 </div>
                <div class="step-description">没有模型的用户请联系客服， 先制作模型后体验3D打印 </div>
                <div class="step-button">
                    <a href="tencent://message/?uin=792724991&amp;Site=qq&amp;Menu=yes">
                        联系客服 >>
                    </a>
                </div>

            </div>
            <div class='first-step'>
                <div class="step-logo no-b"> </div>
                <div class="step-title">选择模型 </div>
                <div class="step-description"> 选择模型库中的模型进行体验 3D打印</div>
                <div class="step-button">
                    <a href="index.php?route=product/category&model">
                        进入模型库 >>
                    </a>
                </div></div>
            <div class='first-step'>
                <div class="step-logo no-c"> </div>
                <div class="step-title">已有模型 </div>
                <div class="step-description">已有模型的用户可以跳过此步， 直接进入打印需求填写 </div>
                <div class="step-button">
                    <a href="index.php?route=product/product/uploadmodel&product_id=1000">
                        上传已有模型 >>
                    </a>
                </div></div>

        </div>

    </div>

</div>

<?php echo $footer; ?>
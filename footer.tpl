
        </div><!-- /.main-content -->
        {if !$inShoppingCart && $secondarySidebar->hasChildren()}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
            </div>
        {/if}
    </div>
    <div class="clearfix"></div>
</section>

<section id="sg-footer">
    <div class="totop">
        <span><a href="#" id="toTop"><i class="fa fa-arrow-up"></i></a></span>
    </div>
    <p>Copyright &copy; {$date_year} {$companyname}. All Rights Reserved.</p>

</section>

<script src="{$BASE_PATH_JS}/bootstrap.min.js"></script>
<script src="{$BASE_PATH_JS}/jquery-ui.min.js"></script>
<script type="text/javascript">
    var csrfToken = '{$token}';
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/whmcs.js"></script>

{$footeroutput}

<!-- BEGIN SMARTGRAVITY CUSTOM CODE -->
</div>
<div class="sb-slidebar sb-left sb-width-thin">
    <div id="panel">
        <ul class="navigation">
            <li class="active">
                <a href="../">Home</a>
            </li>
            <li class="">
                <a href="../gravity-blog">Gravity Blog</a>
            </li>
            <li class="">
                <a href="">Client Area</a>
            </li>
        </ul>
    </div>
</div>
<script>
    $(function () {
        $(document).ready(function() {
          $.slidebars({
            hideControlClasses: true,
            scrollLock: true
          });
        });
    });
</script>
<!-- END SMARTGRAVITY CUSTOM CODE -->
<script id="dsq-count-scr" src="//smartgravity.disqus.com/count.js" async></script>
</body>
</html>

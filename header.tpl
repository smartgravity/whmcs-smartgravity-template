<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}</title>
    <meta property="og:image"         content="https://www.smartgravity.com/accounts/assets/img/smartgravity-logo-facebook.jpg" />
    <meta property="og:title"         content="{if $kbarticle.title}{$kbarticle.title} - {/if}{$pagetitle} - {$companyname}" />
    <meta property="fb:app_id"        content="200362393639503" />
    <link rel="apple-touch-icon" sizes="57x57" href="../favicons/apple-touch-icon-57x57.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="60x60" href="../favicons/apple-touch-icon-60x60.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="72x72" href="../favicons/apple-touch-icon-72x72.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="76x76" href="../favicons/apple-touch-icon-76x76.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="114x114" href="../favicons/apple-touch-icon-114x114.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="120x120" href="../favicons/apple-touch-icon-120x120.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="144x144" href="../favicons/apple-touch-icon-144x144.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="152x152" href="../favicons/apple-touch-icon-152x152.png?v=1.0.0">
    <link rel="apple-touch-icon" sizes="180x180" href="../favicons/apple-touch-icon-180x180.png?v=1.0.0">
    <link rel="icon" type="image/png" href="../favicons/favicon-32x32.png?v=1.0.0" sizes="32x32">
    <link rel="icon" type="image/png" href="../favicons/favicon-194x194.png?v=1.0.0" sizes="194x194">
    <link rel="icon" type="image/png" href="../favicons/favicon-96x96.png?v=1.0.0" sizes="96x96">
    <link rel="icon" type="image/png" href="../favicons/android-chrome-192x192.png?v=1.0.0" sizes="192x192">
    <link rel="icon" type="image/png" href="../favicons/favicon-16x16.png?v=1.0.0" sizes="16x16">
    <link rel="manifest" href="../favicons/manifest.json?v=1.0.0">
    <link rel="mask-icon" href="../favicons/safari-pinned-tab.svg?v=1.0.0" color="#999999">
    <link rel="shortcut icon" href="../favicons/favicon.ico?v=1.0.0">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="../favicons/mstile-144x144.png?v=1.0.0">
    <meta name="msapplication-config" content="../favicons/browserconfig.xml?v=1.0.0">
    <meta name="theme-color" content="#ffffff">
    {include file="$template/includes/head.tpl"}

    {$headoutput}
    {if $capatacha && $capatacha eq "recaptcha"}
        <script type="text/javascript">
         var RecaptchaOptions = {
            theme : 'clean'
         };
         </script>
     {/if}
</head>
<body>

{$headeroutput}

<!-- BEGIN SMARTGRAVITY CUSTOM CODE -->
<div id="sb-site">
<header id="sg-header">
    <div class="container">
        <div id="sg-logo">
            <a href="http://www.smartgravity.com/">
                <img src="{$WEB_ROOT}/templates/{$template}/img/sg-circle-961x.png" srcset="{$WEB_ROOT}/templates/{$template}/img/sg-circle-961x.png 48w, {$WEB_ROOT}/templates/{$template}/img/sg-circle-962x.png 96w" sizes="100vw">
            </a>
        </div>
        <div id="sg-header-title">
            <a href="http://www.smartgravity.com/">
                <h3><span>Smart</span>Gravity</h3>
            </a>
        </div>
        <div id="navbar">
            <ul class="navigation">
                <li class="">
                    <a href="http://www.smartgravity.com/">Home</a>
                </li>
                <li class="">
                    <a href="http://www.smartgravity.com/gravity-blog">Gravity Blog</a>
                </li>
                <li class="active">
                    <a href="clientarea.php">Client Area</a>
                </li>
            </ul>
            <span class="panel-activation sb-toggle-left menu-btn fa fa-bars"></span>
        </div>
    </div>
</header>
<!-- END SMARTGRAVITY CUSTOM CODE -->

<section id="main-menu">

    <nav id="nav" class="navbar navbar-default navbar-main" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="sg-client-area-mobile-menu-title">Client Area Menu</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav">

                    {include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}

                </ul>

                <ul class="nav navbar-nav navbar-right">

                    {include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}

                </ul>

            </div><!-- /.navbar-collapse -->
        </div>
    </nav>

</section>

<section id="header">
    <div class="container">

        <!-- Top Bar -->
        <div id="sg-breadcrumb" class="sg-topnav-hide-mobile">
            {if !$inShoppingCart}{include file="$template/includes/breadcrumb.tpl"}
            {else}
                <div id="sg-breadcrumb" class="sg-topnav-hide-mobile">
                    <ol class="breadcrumb">
                        <li><a href="{$WEB_ROOT}/index.php">{$LANG.globalsystemname}</a></li>
                        <li class="active">{$LANG.carttitle}</li>
                    </ol>
                </div>
            {/if}
        </div>
        <div id="top-nav" class="sg-topnav-hide-mobile">
            <!-- Language -->
            {if $languagechangeenabled && count($locales) > 1}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="languageChooser"><i class="fa fa-language"></i> {$LANG.chooselanguage} <span class="caret"></span></a>
                    <div id="languageChooserContent" class="hidden">
                        <ul>
                            {foreach from=$locales item=locale}
                                <li><a href="{$currentpagelinkback}language={$locale.language}">{$locale.localisedName}</a></li>
                            {/foreach}
                        </ul>
                    </div>
                </div>
            {/if}
            <!-- Login/Account Notifications -->
            {if $loggedin}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="accountNotifications" data-placement="bottom" title="{lang key="notifications"}"><i class="fa fa-info"></i> {$LANG.notifications} ({$clientAlerts|count})</a>
                    <div id="accountNotificationsContent" class="hidden">
                        {foreach $clientAlerts as $alert}
                            <div class="clientalert text-{$alert->getSeverity()}">{$alert->getMessage()}{if $alert->getLinkText()} <a href="{$alert->getLink()}" class="btn btn-xs btn-{$alert->getSeverity()}">{$alert->getLinkText()}</a>{/if}</div>
                        {foreachelse}
                            <div class="clientalert text-success"><i class="fa fa-check-square-o"></i> {$LANG.notificationsnone}</div>
                        {/foreach}
                    </div>
                </div>
            {else}
                <div class="pull-right nav">
                    <a href="#" class="quick-nav" data-toggle="popover" id="loginOrRegister" data-placement="bottom"><i class="fa fa-user"></i> {$LANG.login}</a>
                    <div id="loginOrRegisterContent" class="hidden">
                        <form action="{if $systemsslurl}{$systemsslurl}{else}{$systemurl}{/if}dologin.php" method="post" role="form">
                            <div class="form-group">
                                <input type="email" name="username" class="form-control" placeholder="{$LANG.clientareaemail}" required />
                            </div>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="password" name="password" class="form-control" placeholder="{$LANG.loginpassword}" required />
                                    <span class="input-group-btn">
                                        <input type="submit" class="btn btn-primary" value="{$LANG.login}" />
                                    </span>
                                </div>
                            </div>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="rememberme" /> {$LANG.loginrememberme} &bull; <a href="{$WEB_ROOT}/pwreset.php">{$LANG.forgotpw}</a>
                            </label>
                        </form>
                        {if $condlinks.allowClientRegistration}
                            <hr />
                            {$LANG.newcustomersignup|sprintf2:"<a href=\"$WEB_ROOT/register.php\">":"</a>"}
                        {/if}
                    </div>
                </div>
            {/if}
            <!-- Shopping Cart -->
            <div class="pull-right nav">
                <a href="{$WEB_ROOT}/cart.php?a=view" class="quick-nav"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs">{$LANG.viewcart} (</span><span id="cartItemCount">{$cartitemcount}</span><span class="hidden-xs">)</span></a>
            </div>

            {if $adminMasqueradingAsClient}
                <!-- Return to admin link -->
                <div class="alert alert-danger admin-masquerade-notice">
                    {$LANG.adminmasqueradingasclient}<br />
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.logoutandreturntoadminarea}</a>
                </div>
            {elseif $adminLoggedIn}
                <!-- Return to admin link -->
                <div class="alert alert-danger admin-masquerade-notice">
                    {$LANG.adminloggedin}<br />
                    <a href="{$WEB_ROOT}/logout.php?returntoadmin=1" class="alert-link">{$LANG.returntoadminarea}</a>
                </div>
            {/if}

        </div>
    </div>
</section>

{if $templatefile == 'homepage'}
    <section id="home-banner">
        <div class="container text-center">
            {if $registerdomainenabled || $transferdomainenabled}
                <h2>{$LANG.homebegin}</h2>
                <form method="post" action="domainchecker.php">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                            <div class="input-group input-group-lg">
                                <input type="text" class="form-control" name="domain" placeholder="{$LANG.exampledomain}" />
                                <span class="input-group-btn">
                                    {if $registerdomainenabled}
                                        <input type="submit" class="btn btn-warning" value="{$LANG.search}" />
                                    {/if}
                                    {if $transferdomainenabled}
                                        <input type="submit" name="transfer" class="btn btn-info" value="{$LANG.domainstransfer}" />
                                    {/if}
                                </span>
                            </div>
                        </div>
                    </div>

                    {include file="$template/includes/captcha.tpl"}
                </form>
            {else}
                <h2>{$LANG.doToday}</h2>
            {/if}
        </div>
    </section>
    <div class="home-shortcuts">
        <div class="container">
            <div class="row">
                <div class="col-md-4 hidden-sm hidden-xs text-center">
                    <p class="lead">
                        {$LANG.howcanwehelp}
                    </p>
                </div>
                <div class="col-sm-12 col-md-8">
                    <ul>
                        {if $registerdomainenabled || $transferdomainenabled}
                            <li>
                                <a id="btnBuyADomain" href="domainchecker.php">
                                    <i class="fa fa-globe"></i>
                                    <p>
                                        {$LANG.buyadomain} <span>&raquo;</span>
                                    </p>
                                </a>
                            </li>
                        {/if}
                        <li>
                            <a id="btnOrderHosting" href="cart.php">
                                <i class="fa fa-hdd-o"></i>
                                <p>
                                    {$LANG.orderhosting} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnMakePayment" href="clientarea.php">
                                <i class="fa fa-credit-card"></i>
                                <p>
                                    {$LANG.makepayment} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                        <li>
                            <a id="btnGetSupport" href="submitticket.php">
                                <i class="fa fa-envelope-o"></i>
                                <p>
                                    {$LANG.getsupport} <span>&raquo;</span>
                                </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
{/if}

<section id="main-body" class="container">

    <div class="row">
        {if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}
            {if $primarySidebar->hasChildren()}
                <div class="col-md-9 pull-md-right">
                    {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
                </div>
            {/if}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}
            </div>
        {/if}
        <!-- Container for main page display content -->
        <div class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
            {if !$primarySidebar->hasChildren() && !$showingLoginPage && !$inShoppingCart && $templatefile != 'homepage'}
                {include file="$template/includes/pageheader.tpl" title=$displayTitle desc=$tagline showbreadcrumb=true}
            {/if}

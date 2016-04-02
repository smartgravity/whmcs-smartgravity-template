{if $announcementsFbRecommend}
    {literal}
    <div id="fb-root"></div>
    <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '200362393639503',
          xfbml      : true,
          version    : 'v2.5'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
    </script>
    {/literal}
{/if}
{if $twittertweet}
    <script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
{/if}
{foreach from=$announcements item=announcement}

    <div class="announcement-single">

        <h2><a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}{$smarty.server.PHP_SELF}?id={$announcement.id}{/if}">{$announcement.title}</a></h2>
		<div class="sg-article-info"><p><i class="fa fw fa-calendar"></i> {"j M Y"|date:$announcement.timestamp}</p></div>
        <div class="clear hidden-lg hidden-md hidden-sm"></div>
        {if $announcementsFbRecommend}
            <div class="fb-like sg-article-social-info" data-layout="button" data-href="{$systemurl}{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}" data-send="true" data-width="100" data-show-faces="false" data-action="like"></div>
        {/if}
        {if $twittertweet}
            <div class="sg-article-social-info">
                <a href="https://twitter.com/share" class="twitter-share-button" data-text="{$announcement.title}" data-url="{$systemurl}{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}announcements.php?id={$announcement.id}{/if}" data-hashtags="smartgravity" data-count="horizontal" data-via="{$twitterusername}">Tweet</a>
            </div>
        {/if}
        <div class="clear hidden-lg hidden-md hidden-sm"></div>
        <div class="sg-article-comment-count-info">
            <a href="{$systemurl}{if $seofriendlyurls}announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html#disqus_thread{else}announcements.php?id={$announcement.id}#disqus_thread{/if}" class="fa fa-comment">Be the first to comment</a>
        </div>
        <div class="clear"></div>
        <p>{$announcement.text}</p>
        <a href="{if $seofriendlyurls}{$WEB_ROOT}/announcements/{$announcement.id}/{$announcement.urlfriendlytitle}.html{else}{$smarty.server.PHP_SELF}?id={$announcement.id}{/if}">{$LANG.readmore}...</a>
        <br />
    </div>

{foreachelse}

    {include file="$template/includes/alert.tpl" type="info" msg="{$LANG.noannouncements}" textcenter=true}

{/foreach}

{if $prevpage || $nextpage}

    <div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3">
        <form class="form-inline" role="form">
            <div class="form-group">
                <div class="input-group">
                    {if $prevpage}
                        <span class="input-group-btn">
                            <a href="announcements.php?page={$prevpage}{if $view}&view={$view}{/if}" class="btn btn-default">&laquo; {$LANG.previouspage}</a>
                        </span>
                    {/if}
                    <input class="form-control" style="text-align: center;" value="{$LANG.page} {$pagenumber}" disabled="disabled">
                    {if $nextpage}
                        <span class="input-group-btn">
                            <a href="announcements.php?page={$nextpage}{if $view}&view={$view}{/if}" class="btn btn-default">{$LANG.nextpage} &raquo;</a>
                        </span>
                    {/if}
                </div>
            </div>
        </form>
    </div>
{/if}

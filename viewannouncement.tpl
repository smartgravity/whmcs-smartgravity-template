<div class="sg-article-info"><p><i class="fa fw fa-calendar"></i> {$timestamp|date_format:"%B %e, %Y"}</p></div>
<div class="clear hidden-lg hidden-md hidden-sm"></div>
{if $facebookrecommend}
    {literal}
    <div id="fb-root">
    </div>
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
    <div class="fb-like sg-article-social-info" data-layout="button" data-href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" data-send="true" data-width="100" data-show-faces="false" data-action="like"></div>
{/if}
{if $twittertweet}
    <div class="sg-article-social-info">
        <a href="https://twitter.com/share" class="twitter-share-button" data-text="{$title}" data-hashtags="smartgravity" data-count="horizontal" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
    </div>
{/if}
<div class="clear hidden-lg hidden-md hidden-sm"></div>
<div class="sg-article-comment-count-info">
    <a href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html#disqus_thread{else}announcements.php?id={$id}#disqus_thread{/if}" class="fa fa-comment">Be the first to comment</a>
</div>
<div class="clear"></div>
<br />

{$text}

{if $googleplus1}
    <g:plusone annotation="inline"></g:plusone>
    {literal}<script type="text/javascript">
    (function() {
        var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
        po.src = 'https://apis.google.com/js/plusone.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
    })();
    </script>{/literal}
{/if}

{if $facebookcomments}
    <br />
    <fb:comments href="{$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if}" num_posts="5" width="500"></fb:comments>
{/if}

<!-- Begin Disqus Comments -->
<br />
<div id="disqus_thread"></div>
<script>
/*
var disqus_config = function () {
this.page.url = {$systemurl}{if $seofriendlyurls}announcements/{$id}/{$urlfriendlytitle}.html{else}announcements.php?id={$id}{/if};
this.page.identifier = {$id}-{$announcement.title};
};
*/
(function() { 
var d = document, s = d.createElement('script');

s.src = '//smartgravity.disqus.com/embed.js';

s.setAttribute('data-timestamp', +new Date());
(d.head || d.body).appendChild(s);
})();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
<!-- End Disqus Comments -->

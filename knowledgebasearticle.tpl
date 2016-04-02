<h2>{$kbarticle.title}</h2>
<div class="clear hidden-lg hidden-md hidden-sm"></div>
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

<div class="sg-article-social-info">
    <a href="https://twitter.com/share" class="twitter-share-button" data-hashtags="smartgravity" data-count="horizontal" data-via="{$twitterusername}">Tweet</a><script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
</div>

<div class="clear hidden-lg hidden-md hidden-sm"></div>
<div class="sg-article-comment-count-info">
    <a href="{if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html#disqus_thread{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}#disqus_thread{/if}" class="fa fa-comment">Be the first to comment</a>
</div>
<div class="clear"></div>
<br />

    {$kbarticle.text}

{if $kbarticles}
    <h3 class="kb-alsoread">
        {$LANG.knowledgebasealsoread}
    </h3>
    <div class="kbarticles">
        {foreach key=num item=kbarticle from=$kbarticles}
            <div>
                <a href="{if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}{/if}">
                    <i class="glyphicon glyphicon-file"></i> {$kbarticle.title}
                </a>
                <p>{$kbarticle.article|truncate:100:"..."}</p>
            </div>
        {/foreach}
    </div>
{/if}

<!-- Begin Disqus Comments -->
    <br />
    <br />
    <div id="disqus_thread"></div>
    <script>
    /*
    var disqus_config = function () {
    this.page.url = {if $seofriendlyurls}{$WEB_ROOT}/knowledgebase/{$kbarticle.id}/{$kbarticle.urlfriendlytitle}.html{else}knowledgebase.php?action=displayarticle&amp;id={$kbarticle.id}{/if};
    this.page.identifier = {$kbarticle.id}-{$kbarticle.title};
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
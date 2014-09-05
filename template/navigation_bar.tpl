<ul class="pagination pagination-centered">
{if isset($navbar.URL_FIRST)}
    <li><a href="{$navbar.URL_FIRST}" rel="first">{'First'|@translate}</a></li>
    <li><a href="{$navbar.URL_PREV}" rel="prev">{'Previous'|@translate}</a></li>
{else}
    <li><a href="#" rel="first">{'First'|@translate}</a></li>
    <li><a href="#" rel="prev">{'Previous'|@translate}</a></li>
{/if}
{assign var='prev_page' value=0}
{foreach from=$navbar.pages key=page item=url}
{if $page > $prev_page+1}...{/if}
{if $page == $navbar.CURRENT_PAGE}
    <li><a href="#">{$page}</a></li>
{else}
    <li><a href="{$url}">{$page}</a></li>
{/if}
{assign var='prev_page' value=$page}
{/foreach}

{if isset($navbar.URL_NEXT)}
    <li><a href="{$navbar.URL_NEXT}" rel="next">{'Next'|@translate}</a></li>
    <li><a href="{$navbar.URL_LAST}" rel="last">{'Last'|@translate}</a></li>
{else}
    <li><a href="#" rel="next">{'Next'|@translate}</a></li>
    <li><a href="#" rel="last">{'Last'|@translate}</a></li>
{/if}
</ul>
<div class="container">
	<section class="product-tabs-container-slider">
		<ul class="tabs"> 
		{$count=0}
		{foreach from=$productTabslider item=productTab name=posTabProduct}
			<li class="{$productTab.id} {if $smarty.foreach.posTabProduct.first}first_item{elseif $smarty.foreach.posTabProduct.last}last_item{else}{/if} item {if $count==0} active {/if}" rel="tab_{$productTab.id}"  >
				{$productTab.name}
			</li>
				{$count= $count+1}
		{/foreach}	
		</ul>
		{$rows= $config['POS_HOME_PRODUCTTAB_ROWS']}
		<div class="tab_container"> 
		{foreach from=$productTabslider item=productTab name=posTabProduct}
				<div id="tab_{$productTab.id}" class="tab_content">
					<div class="row pos-content">
						<div class="productTabContent">
						{foreach from=$productTab.productInfo item=product name=myLoop}
						{if $smarty.foreach.myLoop.index % $rows == 0 || $smarty.foreach.myLoop.first }
							<div class="item-feature">
						{/if}
						
							{include file="catalog/_partials/miniatures/product.tpl" product=$product}
							
						{if $smarty.foreach.myLoop.iteration % $rows == 0 || $smarty.foreach.myLoop.last  }
							</div>
						{/if}	
						{/foreach}
						</div>
					</div>	
				</div>
		{/foreach}	
		
		</div> <!-- .tab_container -->
	</section>
</div>

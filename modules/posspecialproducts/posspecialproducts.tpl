{if count($products) > 0 && $products != null}
<div class="pos_special_product">
	<div class="container">
		<div class="pos-title">
			<h2><span>{l s='Sale Products' mod='posspecialproducts'}</span></h2>
		</div>
		<div class="pos_content row">
			{$rows= $config['POS_HOME_SPECIAL_ROWS']}
			<div class="specialSlide">
				{foreach from=$products item=product name=myLoop}
					{if $smarty.foreach.myLoop.index % $rows == 0 || $smarty.foreach.myLoop.first }
					<div class="item-product">
					{/if}			
						
						{include file="catalog/_partials/miniatures/product.tpl" product=$product}
							
					
					{if $smarty.foreach.myLoop.iteration % $rows == 0 || $smarty.foreach.myLoop.last  }
					</div>
					{/if}
				{/foreach}
			</div>
		</div>
	</div>
</div>	
{/if}
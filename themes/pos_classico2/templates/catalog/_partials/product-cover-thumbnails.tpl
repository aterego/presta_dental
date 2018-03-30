<div class="images-container">
  {block name='product_cover'}
    <div class="product-cover">
      <img class="js-qv-product-cover" src="{$product.cover.bySize.large_default.url}" alt="{$product.cover.legend}" title="{$product.cover.legend}" style="width:100%;" itemprop="image">
      <div class="layer hidden-sm-down" data-toggle="modal" data-target="#product-modal">
        <i class="material-icons zoom-in">&#xE8FF;</i>
      </div>
    </div>
  {/block}

  {block name='product_images'}
    <div class="js-qv-mask mask">
      <div class="product-images js-qv-product-images">
        {foreach from=$product.images item=image}
          <div class="thumb-container">
            <img
              class="thumb js-thumb {if $image.id_image == $product.cover.id_image} selected {/if}"
              data-image-medium-src="{$image.bySize.medium_default.url}"
              data-image-large-src="{$image.bySize.large_default.url}"
              src="{$image.bySize.home_default.url}"
              alt="{$image.legend}"
              title="{$image.legend}"
              width="100"
              itemprop="image"
            >
          </div>
        {/foreach}
      </div>
    </div>
  {/block}
</div>
<script type="text/javascript"> 
		$(document).ready(function() {
			var owl = $(".images-container .product-images");
			owl.owlCarousel({
			items :4,
			addClassActive: true,
			navigation :true,
			slideSpeed :1000,
			pagination : false,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [767,4],
			itemsTablet: [480,3],
			itemsMobile : [320,2]
			}); 
		});
</script>
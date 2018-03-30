<div class="col-xs-12 col-sm-12 col-md-6 col-xl-6">
	<div class="ft_newsletter">
		<div class="content_newsletter">
			<h3 class="footer_header">
				{l s='NEWSLETTER'  d='Shop.Theme.Actions'}
			</h3>
			<!--  {if $conditions}
			  <p class="desc">{$conditions}</p>
			{/if} -->
			<form action="{$urls.pages.index}#footer" method="post">
				<div class="input-wrapper">
				  <input
					name="email"
					class="input_txt"
					type="text"
					value="{$value}"
					placeholder="{l s='Your email address' d='Shop.Forms.Labels'}"
				  >
				</div>
				<input
				  class="btn btn-primary"
				  name="submitNewsletter"
				  type="submit"
				  value="{l s='Submit' d='Shop.Theme.Actions'}"
				>
				<input type="hidden" name="action" value="0">
			</form>
		</div>
	</div>
</div>
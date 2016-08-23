class CommentsController < ApplicationController
before_action :authenticate_user!
	def create

		@product = Product.find(params[:product_id])
		@comment = Comment.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id 
		@comment.product_id = @product.id

		if @comment.save
			redirect_to product_path(@product)
		else
			render 'new'
		end
		
	end
end

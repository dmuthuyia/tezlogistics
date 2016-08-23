class ReviewsController < ApplicationController

	before_action :authenticate_user!
	def create

		@staff = Staff.find(params[:staff_id])
		@review = Review.create(params[:review].permit(:content))
		@review.user_id = current_user.id 
		@review.staff_id = @staff.id

		if @review.save
			redirect_to staff_path(@staff)
		else
			render 'new'
		end
		
	end

end

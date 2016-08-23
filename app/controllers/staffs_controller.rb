class StaffsController < ApplicationController

before_action :find_staff, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_user!, except: [:index, :show]

def index
	@staffs = Staff.all.order("created_at DESC")
end

def show
	@reviews = Review.where(staff_id: @staff)
	@random_staff = Staff.where.not(id: @staff).order("RANDOM()").first
end

def new
	@staff = current_user.staffs.build
end

def create
	@staff = current_user.staffs.build(staff_params)

	if @staff.save
		redirect_to @staff
	else
		render 'new'
	end
end

def edit
end

def update
	if @staff.update(staff_params)
		redirect_to @staff
	else
		render 'edit'
	end
end

def destroy
	@staff.destroy
	redirect_to root_path
end

def upvote
	@staff.upvote_by current_user
	redirect_to :back
end

def downvote
	@staff.downvote_by current_user
	redirect_to :back
end

private

def find_staff
	@staff = Staff.find(params[:id])
end

def staff_params
	params.require(:staff).permit(:staff_name, :job_title, :staff_img, :staff_img, :other_duties, :status, :url, :employee_since, :employee_until)
end


end

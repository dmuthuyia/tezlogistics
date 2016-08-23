class MyusersController < ApplicationController
def create
  @user = User.new(user_params)

  respond_to do |format|
    if @user.save

      # Sends email to user when user is created.
      Trybsmailer.sample_email(@user).deliver

      format.html { redirect_to @user, notice: 'User was successfully created.' }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
end
end

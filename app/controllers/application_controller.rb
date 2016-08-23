class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :load_tweets

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :user_name
  	devise_parameter_sanitizer.for(:account_update) << :user_name
  end

 

  def load_tweets
    #@tweets = Twitter.user_timeline("akmur", :count =&gt; 5)
   # @tweets = Twitter.user_timeline[0..4] # For this demonstration lets keep the tweets limited to the first 5 available.
  end


end

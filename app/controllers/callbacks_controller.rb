class CallbacksController < ApplicationController
    #def digitalocean
        #@user = User.from_omniauth(request.env["omniauth.auth"])
        #sign_in_and_redirect @user
    #end

    def facebook
        @user = User.from_omniauth(request.env["omniauth.auth"])
        sign_in_and_redirect @user
    end
end

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  include ApplicationHelper

  def facebook

    # Attempt to find the User
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)
    ApplicationMailer.trip_interest_signup(@user.id).deliver

    if !request.env['omniauth.params'].empty?
      adventure = Adventure.find_by_slug(request.env['omniauth.params']['adventure'])
      adventure.users << @user
      adventure.save
    end
    

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication # This will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      #session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

  def passthru
    render :file => "#{Rails.root}/public/404.html", :status => 404, :layout => false
  end

end

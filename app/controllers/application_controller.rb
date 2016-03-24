class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def allowed_user(current_user)
    if current_user 
      if current_user.email == 'chrisknight.mail@gmail.com' || current_user.email == 'jolesorama@gmail.com' || current_user.email == 'jemaser@syr.edu'
        return true
      else
        return false
      end
    else
      return false
    end
  end

  private


  def after_sign_in_path_for(resource)    
    '/account'  
  end
  
  #-> Prelang (user_login:devise)
  def require_user_signed_in
    unless user_signed_in?

      # If the user came from a page, we can send them back.  Otherwise, send
      # them to the root path.
      if request.env['HTTP_REFERER']
        fallback_redirect = :back
      elsif defined?(root_path)
        fallback_redirect = root_path
      else
        fallback_redirect = "/"
      end

      redirect_to fallback_redirect, flash: {error: "You must be signed in to view this page."}
    end
  end

end

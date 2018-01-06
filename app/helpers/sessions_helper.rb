module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def check_login
    if logged_in? == false then
      redirect_to new_session_path
    end
  end
end
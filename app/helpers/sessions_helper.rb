module SessionsHelper
  def current_user
    @current_user || =User.find_by(id: session[:id])
  end
  def logged_in?

  end
end

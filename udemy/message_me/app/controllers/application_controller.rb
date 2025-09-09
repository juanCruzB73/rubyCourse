class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :logged_in?, :current_user, :require_user, :is_admin?

  def require_user
    if !logged_in?
      flash[:alert]="You must be logged to preform this action"
      redirect_to new_session_path
    end
  end

  def current_user
    @current_user || User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def is_admin?
    !!current_user&.admin
  end
end

class ApplicationController < ActionController::API
  def auth_header
    # e.g. "Authorization: Bearer <token>"
    request.headers["Authorization"]
  end

  def decoded_token
    if auth_header
      token = auth_header.split(" ")[1]
      begin
        JWT.decode(token, Rails.application.credentials.secret_key_base, true, algorithm: "HS256")
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]["user_id"]
      @current_user ||= User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    unless logged_in?
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end
end

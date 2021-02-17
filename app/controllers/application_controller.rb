class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

protected #(<--消さずに置いている)

  #def after_sign_in_path_for(resource)
  #  user_path(resource)
    # ログイン後ホームではなくマイページにクライアントを行かせる。
  #end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email]) # :emailを追加
  end
end

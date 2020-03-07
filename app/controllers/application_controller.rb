class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  

  #registrationsで追加したのと同様
  def after_sign_in_path_for(resource)
    "/user/#{current_user.id}"
  end

  protected
  
  #入力フォームからアカウント名情報をDBに保存するため
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image])
  end
end

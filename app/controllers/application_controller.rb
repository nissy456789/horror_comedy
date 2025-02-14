# frozen_string_literal: true

class ApplicationController < ActionController::Base
#deviceのコントローラーを使用しているときに処理される
  before_action :configure_permitted_parameters, if: :devise_controller?
#デバイスのストロングパラメーターにnameの保存を許可する
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :client_id]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end

  
end

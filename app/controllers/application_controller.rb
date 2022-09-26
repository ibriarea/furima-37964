class ApplicationController < ActionController::Base
  before_action :basic_auth

<<<<<<< HEAD
=======
  # deviseコントローラー時に下記メソッドを実行
  before_action :configure_permitted_parameters, if: :devise_controller?
>>>>>>> 7fb8a5cfe1f15168afeaf604a4aa9e563da5723a

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
<<<<<<< HEAD
      #username == 'admin' && password == '2222'
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
=======
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end

  # 新規登録時、emailとencrypted_password以外もストロングパラメーターとして許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :last_name, :first_name, :read_last, :read_first, :birthday])
  end
>>>>>>> 7fb8a5cfe1f15168afeaf604a4aa9e563da5723a
end

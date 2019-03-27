  class SessionsController < Devise::SessionsController

    def new
      super
    end

    def create
      super
    end

    def destroy
      super
    end

    private
    def after_sign_in_path_for resource
      if session[:admin_flg] == 1
        session[:admin_flg] = 0
        rails_admin_path
      else
        root_path
      end
    end
  end
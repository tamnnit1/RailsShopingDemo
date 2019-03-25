  class SessionsController < Devise::SessionsController
    layout :my_layout

    def new
      get_pre_login_url
      super
    end

    def create
      @referer_url = root_path
      super
    end

    def destroy
      get_pre_login_url
      super
    end

    private
    def get_pre_login_url
      if request.path == "/admin/sing_in"
        @referer_url = rails_admin_path
      else
        @referer_url = root_path
      end
    end

    def after_sign_in_path_for resource
      sign_in_url = url_for(action: "new", controller: "sessions", only_path: false, protocol: "http")
      if @referer_url == sign_in_url
        super
      else
        @referer_url || root_path
      end
    end

    def my_layout
      request.path == "/admin/sing_in" ? 'admin' : 'application'
    end
  end
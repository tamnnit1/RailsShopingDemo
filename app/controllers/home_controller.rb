class HomeController < ApplicationController
  def index
    session[:admin_flg] = 0
  end
end

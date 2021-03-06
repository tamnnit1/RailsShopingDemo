RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.parent_controller = "::ApplicationController"

  config.authorize_with do |controller|
    unless current_user.try(:admin?)
      if current_user
        current_user.update_attributes(:expire_at_next_request=>false)
        sign_out current_user
      end
      session[:admin_flg] = 1
      redirect_to new_session_path(:user)
    end
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    edit do
      field :email
      field :password
      field :password_confirmation
      field :admin do
      label 'Is Admin'
    end
    end
  end

end

ActiveAdmin.setup do |config|

  config.site_title = "Shit Pedro Says"

  config.authentication_method = :authenticate_admin_user!

  config.current_user_method = :current_admin_user

  config.logout_link_path = :destroy_admin_user_session_path

  config.batch_actions = true

  config.clear_stylesheets!
  config.register_stylesheet 'active_admin/active_admin.css'

  config.clear_javascripts!
  config.register_javascript 'active_admin/active_admin.js'

end

class Users::RegistrationsController < Devise::RegistrationsController
    protected
  def after_update_path_for(_resource)
    user_path(current_user)
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
end

class RegistrationsController < Devise::RegistrationsController

  protected

  def sign_up_params
    params.require(:user).permit(:mobile_number, :email, :password)
  end

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  
end
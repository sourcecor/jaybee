class Admin::Supervisors::SessionsController < Devise::SessionsController
  include Recaptcha::Verify
  layout 'admin/layouts/basic'
  prepend_before_action :check_captcha, only: [:create] # Change this to be any actions you want to protect.
# before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
  private
    def check_captcha
      unless verify_recaptcha
        self.resource = resource_class.new sign_in_params
        respond_with_navigational(resource) { render :new }
      end
    end
end

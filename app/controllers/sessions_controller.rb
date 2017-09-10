class SessionsController < Devise::SessionsController
    prepend_before_action :require_no_authentication, only: [:new, :create]
    prepend_before_action :allow_params_authentication!, only: :create
    prepend_before_action :verify_signed_out_user, only: :destroy

    def new
        self.resource = resource_class.new(sign_in_params)

        self.resource.online = true
        self.resource.save
        clean_up_passwords(resource)
        yield resource if block_given?
        respond_with(resource, serialize_options(resource))
    end

    def create
        self.resource = warden.authenticate!(auth_options)
        self.resource.online = true
        self.resource.save
        set_flash_message!(:notice, :signed_in)
        sign_in(resource_name, resource)
        yield resource if block_given?
        respond_with resource, location: after_sign_in_path_for(resource)
    end

    def destroy
        current_user.online = false
        current_user.save
        super
    end
end

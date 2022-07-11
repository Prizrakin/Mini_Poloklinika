class ProfilesController < ApplicationController
    before_action :set_roles
    before_action :set_users
    before_action :set_receptions
    def index
    end


    def set_roles
        @roles = Role.all
    end
    
    def set_users
        @users = User.all
    end

    def set_receptions
        @receptions = Reception.all
    end

    
end

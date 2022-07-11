class ReceptionsController < ApplicationController


    def new
        @user = User.find(params[:user_id])
        @reception = Reception.new
        fast_create
    end

    def create
        @reception = Reception.new 
        @reception.user_id = @user.id
        @reception.patient = current_user.id
        @reception.activity = true
        if @reception.save
            flash[:alert] = "Успішно створено"
            redirect_to profiles_path
        else
            flash[:alert] = "Щось пішло не так"
        end
    end



    private

    

    def fast_create
        @reception = Reception.new 
        @reception.user_id = @user.id
        @reception.patient = current_user.id
        @reception.activity = true
        if @reception.save
            flash[:alert] = "Успішно створено"
            redirect_to profiles_path
        else
            flash[:alert] = "Щось пішло не так"
        end
    end
end

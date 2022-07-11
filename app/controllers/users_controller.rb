class UsersController < ApplicationController


    def new
        @user = User.find(params[:id])
        @reception = Reception.new
    end
    
    def show
        @user = User.find(params[:id])
    end

    def create
        @reception = Reception.new 
        @reception.doctor = @user.id
        @reception.patient = current_user.id
        @reception.activity = true
        if @reception.save
            flash[:alert] = "Успішно створено"
            redirect_to profiles_path
        else
            flash[:alert] = "Щось пішло не так"
        end
    end

    def new_receptions
        @reception = Reception.new 
        @reception.doctor = @user.id
        @reception.patient = current_user.id
        @reception.activity = true
        if @reception.save
            flash[:alert] = "Успішно створено"
            redirect_to profiles_path
        else
            flash[:alert] = "Щось пішло не так"
        end

        render :nothing => true, :content_type => 'text/html', :status => 200
    end

end

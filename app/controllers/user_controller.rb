class UserController < ApplicationController
    
    def signup
        @user = User.new 
    end

    def login
       
    end

    #Σύνδεση χρήστη
    def find
        @user = User.find_by(email: params[:email])
      
        if @user.present? && @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_todo_lists_path(user_id: @user.id), notice: 'Logged in successfully'
        else 
          redirect_to login_path, notice: 'Invalid email or password! Please try again.'
        end
      end
      

    #Εγγραφή χρήστη 
        def create
        @user = User.new(user_params)
 
        if @user.save
            session[:user_id]= @user.id
            redirect_to user_todo_lists_path(user_id: @user.id), notice: 'Successfully created account'
 
        else
        
            redirect_to signup_path, notice: 'This email is being used. Please try an other one.'
        end
 
    end

     def logout
        session[:user_id]= nil
        redirect_to signup_path, notice: 'Logged out!'
    end
    private
 
    def user_params
     params.require(:user).permit(:email, :password, :password_confirmation)
    end


end

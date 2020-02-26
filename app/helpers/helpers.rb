class Helpers
    def self.current_user(session)
         @user = User.find(session[:user_id])
    end

    def self.is_logged_in?(session)
        if @user = session[:user_id]
            true
        else 
            @user != session[:user_id]
            false
        end
    end
end
class Helpers
    def self.current_user(session)
        User.find(session[:user_id])
    end

    def self.is_logged_in?(session)
      # !!current_user(session)
        if session[:user_id]
            true
        else 
            !session[:user_id]
            false
        end
    end
end
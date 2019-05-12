class ApplicationController < ActionController::Base

    helper_method :current_writer
   
    def current_writer
        writer_id = session[:writer_id]
        user_id = session[:user_id]
        if writer_id
       return  writer_id && Writer.find(writer_id)
         
        elsif user_id
            return user_id && User.find(user_id)
        else
            return nil
        end

    end

   
end


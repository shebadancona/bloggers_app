class SessionsController < ApplicationController
  def new
  end

  def create
    r = Writer.find_by(email: params[:session][:email])
    u = User.find_by(email: params[:session][:email])
  
    if r && r.authenticate(params[:session][:password])
      session[:writer_id] = r.id
      puts "........................#{session[:writer_id]}"
      redirect_to articles_my_articles_url
   
    elsif u && u.authenticate(params[:session][:password])
      session[:user_id] = u.id
      redirect_to articles_url
    else
      render :new
    end
  end

  def destroy
    # binding.pry
    if session[:writer_id].present?
    session[:writer_id] = nil
    redirect_to writers_registration_url
    elsif session[:user_id].present?
    session[:user_id] = nil
    redirect_to user_registration_url
  end
end
end

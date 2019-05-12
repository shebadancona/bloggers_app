class WritersController < ApplicationController

  def index
    @writers = Writer.all
  end

  def registration
    render :registration
  end

  def create
    @writer = Writer.new(writer_params)
   if  @writer.save
    redirect_to new_sessions_url
  else
    render :registration
  end
end

  def destroy
    Writer.find(params[:id]).destroy
redirect_to writers_url
  end



private
def writer_params
  params.require(:writer).permit(:name, :age, :email, :password, :password_confirmation)
end

end

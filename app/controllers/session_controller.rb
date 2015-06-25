class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create
    name = params[:name]
    password = params[:password]

    @user = User.find_by name: name
    if (@user) && (@user.authenticate password)
      # session[:user_id] = user.id
      # @current_user = user
    else
      render json: {auth: "failed"}, status: 422
    end
  end

  def destroy
    session.delete :user_id
    redirect_to login_path
  end

end

class SecretsController < ApplicationController

  # before_action do
  #   authorize_api_application!
  # end
  #
  # before_action do
  #   authorize_current_user!
  # end

  def index
    @secrets = Secret.all.includes(:user).first(20)
  end

  def create
    @secret = Secret.new params.require(:secret).permit(:comment, :user_id)
      if @secret.save
        render :index, status: 201
      else
        render json: @secret.errors, status: 422
      end
  end





end

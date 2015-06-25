class SecretsController < ApplicationController

  # before_action do
  #   authorize_api_application!
  # end
  #
  # before_action do
  #   authorize_current_user!
  # end

  def index
    @secrets = Secret.all.includes(:user)
  end

  def create
    @secret = Secret.new params.require(:secret).permit(:comment)
      if @secret.save
        render :index, status: 201
      else
        render json: @secret.errors, status: 422
      end
  end





end

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

end

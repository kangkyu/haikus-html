class UsersController < ApplicationController
  def new
  end

  def create
    haikus_api = HaikusApi.new('179d22fec2986939ad11ea1c9f884c6f')
    haikus_api.create_user(user_params)
    # change render to redirect haikus#index when possible
    render 'new'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

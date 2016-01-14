class UsersController < ApplicationController
  def new
  end

  def create
    HaikusApi.create_user(user_params)
    # change render to redirect haikus#index when possible
    render 'new'
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end

class UsersController < ApplicationController
  def new
  end

  def create
    user = HaikusApi.new
    user.create_user(params[:email], params[:password])
    # change render to redirect haikus#index when possible
    render 'new'
  end
end

class UsersController < ApplicationController
  def index
    @users =  User.all.decorate
  end

  def new
    @user = User.new
  end
end

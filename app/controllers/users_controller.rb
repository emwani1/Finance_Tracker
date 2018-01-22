class UsersController < ApplicationController
  def my_portfolio
    @user = current_user

  end

  def myfriends

  end
end
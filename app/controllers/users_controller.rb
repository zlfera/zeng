class UsersController < ApplicationController
  def new
    @user=User.find 1
  end

  def show
    @user=User.find(params[:id])
  end
end

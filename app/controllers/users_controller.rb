class UsersController < ApplicationController
  def create
    @user=User.new(params[:user])
  
  def new
    @user=User.new    
  end

  def show
    @user=User.find(params[:id])
  end
end

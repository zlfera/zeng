class UsersController < ApplicationController
  def create
    @user=User.new(params[:user])
    if @user.save
      p 1
    else
      render 'new'
    end
  end
  
  def new
    @user=User.new    
  end

  def show
    @user=User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

end

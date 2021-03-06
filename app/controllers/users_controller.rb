class UsersController < ApplicationController
  before_action :signed_in_user,only: [:edit,:update]
  before_action :correct_user,only: [:edit,:update]
  def update
    @user=User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success]='profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def create
    @user=User.new(user_params)
    if @user.save
      flash[:success]='welcome to sample app'
      redirect_to(@user)
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
  def edit
    @user=User.find(params[:id])
  end
  private
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end

  def signed_in_user
    redirect_to signin_url,notice: 'please sign in' unless signed_in?
  end

  def correct_user
    @user=User.find(params[:id])
    redirect_to root_path unless current_user?(@user)
  end
end

class UsersController < ApplicationController
  def main
    @users = User.all
  end
  def new
    @user = User.new
  end
  def create
    User.create(params[:user])
    redirect_to "/users"
  end
  def delete
    User.find(params[:id]).delete
    redirect_to "/users"
  end
  def edit
    @user=User.find(params[:id])
  end
  def update
    @user=User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to "/users"
  end
end

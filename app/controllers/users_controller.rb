class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def index
    @users = current_user
    @book = Book.new
    @user = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end

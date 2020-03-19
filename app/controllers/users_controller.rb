class UsersController < ApplicationController
  def index
  end
  
  def show
    user=User.find(params[:id])
    @nickname=user.nickname

  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end

end

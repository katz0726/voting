class UsersController < ApplicationController
  def show
  end

  def edit
    @user = User.find_by(:id => current_user.id)
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      flash[:notice] = t("activerecord.notices.messages.save_completed", :action_name => '登録')
      redirect_to user_url
    else
      flash.now[:error] = t("activerecord.errors.messages.save_failed", :action_name => '登録')
      render :show, :id => current_user.id
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(
        :username_last, :username_first, :gender, :email, :avatar
      )
    end
end
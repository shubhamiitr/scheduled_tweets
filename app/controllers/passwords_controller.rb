class PasswordsController < ApplicationController
  before_action :require_user_logged_in!

  def edit
  end

  def update
    if Current.user.update(params.require(:user).permit(:password, :password_confirmation))
      redirect_to root_path, notice: "Password updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

end
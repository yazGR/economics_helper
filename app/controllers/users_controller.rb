class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :authorize_admin!

  def index
    @users = User.order(:last_name)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def authorize_admin!
    redirect_to root_path, alert: "Acceso no autorizado" unless current_user.admin?
  end
end

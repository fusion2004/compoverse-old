class Admin::BaseController < ApplicationController
  before_action :authenticate_user!, :authorize_admin!

  private

  def authorize_admin!
    authorize! :manage, :all
  end
end

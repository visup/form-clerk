class PagesController < ApplicationController
  before_action :authenticate_user!, only: :app

  def index
    redirect_to :app if user_signed_in?
  end

  def app
  end
end
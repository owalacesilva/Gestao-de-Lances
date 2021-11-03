class Admins::ClientsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @clients = User.all
  end

  def show
    @client = User.find(params[:id])
  end
end

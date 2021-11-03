class Admins::ClientsController < ApplicationController
  def index
    @clients = User.all
  end

  def show
    @client = User.find(params[:id])
  end
end

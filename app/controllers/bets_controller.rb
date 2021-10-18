class BetsController < ApplicationController
  # Inside your protected controller
  before_action :authenticate_user!

  def index
  end
end

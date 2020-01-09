class BijousController < ApplicationController
  skip_before_action :authenticate_admin!

  def index
    @bijous = Bijou.all
  end

  def show
    @bijou = Bijou.find(params[:id])
  end
end

class BijousController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @bijous = Bijou.all
  end

  def bagues
    @bijous = Bijou.where(category: "bague")
  end

  def boucles
    @bijous = Bijou.where(category: "boucle")
  end

  def broches
    @bijous = Bijou.where(category: "broche")
  end

  def colliers
    @bijous = Bijou.where(category: "collier")
  end

  def show
    @bijou = Bijou.find(params[:id])
  end
end

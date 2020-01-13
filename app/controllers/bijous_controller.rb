class BijousController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    # Bijou with a tag in params or all the bijoux
    if params[:tag].present?
      @bijous = Bijou.tagged_with(params[:tag])
    else
      @bijous = Bijou.all
    end
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
    @related_bijous = @bijou.find_related_tags
  end

  def new
    @bijou = Bijou.new
  end

  def create
    @bijou = Bijou.new(bijou_params)

    if @bijou.save
      redirect_to bijou_path(@bijou)
    else
      render :new
    end
  end

  def edit
    @bijou = Bijou.find(params[:id])
  end

  def update
    @bijou = Bijou.find(params[:id])
    if @bijou.update(bijou_params)
      redirect_to bijou_path(@bijou)
    else
      render :edit
    end
  end

  def destroy
    @bijou.destroy
    redirect_to bijous_path
  end

  private

  def bijou_params
    params.require(:bijou).permit(:sku, :name, :category, :price_cents, :tag_list, :photo)
  end

end

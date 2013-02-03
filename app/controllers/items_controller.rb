class ItemsController < ApplicationController
  def index
    render json: items
  end

  def show
    render json: item
  end

  def create
    item = Item.new(params[:item])

    if item.save
      render json: item
    else
      render json: item, status: 422
    end
  end

  def destroy
    if item.destroy
      render json: item, status: 204
    else
      render json: item
    end
  end

  def update
    if item.update_attributes(params[:item])
      render json: item
    else
      render json: item, status: 422
    end
  end


  private

  def item
    @item ||= Item.find(params[:id])
  end

  def items
    @items ||= Item.all
  end

end
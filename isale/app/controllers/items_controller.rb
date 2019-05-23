# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    
    @item = Item.find_by id: 9
    puts  'Result'
    puts  @item.inspect
  end

  def show
    if params[:id].present?
      @item = Item.find(params[:id])
      render 'index' if @item.nil?
    else
      redirect_to action: 'index'
    end
  end

  def new; end

  def create
    @item = Item.new(item_params)
    @item.save

    puts 'result '
    puts @item
    redirect_to items_url(id: @item.id)
  end

  private def item_params
    params.require(:post_form).permit(:name)
  end
end

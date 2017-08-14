class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :increase_quantity, :decrease_quantity]

  # GET /items
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  #def update
  #  if @item.update(item_params)
  #    item.find_by(id: 1)
  #    item.quantity = 1
  #    item.save
  #    render json: itm
  #  else
  #    render json: @item.errors, status: :unprocessable_entity
  #  end
  #end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  #http://localhost:3000/items/1/update_quantity?value=5

  def increase_quantity
    value = @item.quantity
    value = value + params[:value].to_i
    @item.update(:quantity => value)
    render json: @item
  end

  def decrease_quantity
    value = @item.quantity
    value = value - params[:value].to_i
    @item.update(:quantity => value)
    render json: @item
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:name, :description)
    end
end

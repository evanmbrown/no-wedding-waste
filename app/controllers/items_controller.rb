class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @event = Event.find(params[:event_id])
    @items = Item.all
    respond_with(@event, @items)
  end

  def show
    @event = Event.find(params[:event_id])
    @items = Item.all
    respond_with([@event, @item])
  end

  def new
    @event = Event.find(params[:event_id])
    @item = Item.new
    respond_with([@event, @item])
  end

  def edit
    @event = Event.find(params[:event_id])
    respond_with([@event, @item])
  end

  def create
    @event = Event.find(params[:event_id])
    @item = Item.new(item_params)
    @item.event_id = @event.id 
    @item.save
    respond_with([@event, @item])
  end

  def update
    @event = Event.find(params[:event_id])
    @item.update(item_params)
    respond_with([@event, @item])
  end

  def destroy
    @item.destroy
    respond_with(@item)
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :category_id, :description, :quantity, :quantity_remaining, :instructions)
    end
end

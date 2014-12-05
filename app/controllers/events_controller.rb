class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @events = Event.all
    @user = User.find(current_user)
    @my_events = Event.where(:user_id == current_user)
    respond_with(@events)
  end

  def show
    @user = User.find(current_user)
    @event = Event.find(params[:id])
    @my_items = Item.where("event_id = ?", @event.id)
    respond_with(@event, @my_items)
  end

  def new
    @user = User.find(current_user)
    @event = Event.new
    respond_with(@event)
  end

  def edit
    @user = User.find(current_user)
  end

  def create
    @user = User.find(current_user)
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.save
    respond_with(@event)
  end

  def update
    @user = User.find(current_user)
    @event.update(event_params)
    respond_with(@event)
  end

  def destroy
    @user = User.find(current_user)
    @event.destroy
    respond_with(@event)
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :description, :date, :end, :location, :instructions, :user_id)
    end
end

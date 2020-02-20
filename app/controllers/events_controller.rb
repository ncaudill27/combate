class EventsController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @bookmarks = Event.bookmarked(@user.id)
    @tournaments = @user.tournaments
  end
  
  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    event = Event.new(events_params)
    if event.valid?
      user = User.find(params[:user_id])
      event.save
      redirect_to user_path(user)
    else
      render :new
    end
  end

  def update
    byebug
  end

  def events_params
    params.require(:event).permit(:user_id, :tournament_id, :registration_status)
  end
end

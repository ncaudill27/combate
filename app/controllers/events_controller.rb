class EventsController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @bookmarks = Event.bookmarks(@user.id)
    @tournaments = @user.tournaments
  end
  
  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    event = Event.new(events_params)
    user = User.find_by_id(event.user_id)
    if user.events << event
      redirect_to user_path(user)
    else
      render :new
    end

  end

  def events_params
    params.require(:event).permit(:user_id, :tournament_id, :registration_status)
  end
end

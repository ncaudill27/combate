class EventsController < ApplicationController

  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    event = Event.create(events_params)
    user = User.find_by_id(event.user_id)

    redirect_to user_path(user)
  end

  def events_params
    params.require(:event).permit(:user_id, :tournament_id)
  end
end

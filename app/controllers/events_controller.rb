class EventsController < ApplicationController

  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    byebug
    
  end

  def events_params
    params.require(:event)
  end
end

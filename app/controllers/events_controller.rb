class EventsController < ApplicationController

  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = Event.new
  end
end

class EventsController < ApplicationController

  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    byebug
    
  end

  def events_params
    params.require(:event).permit(:user_id, :tournament_id, divisions_attributes: [:gi, :style, :weight_class])
  end
end

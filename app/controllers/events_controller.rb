class EventsController < ApplicationController

  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
  end

  def create
    byebug
    
  end
end

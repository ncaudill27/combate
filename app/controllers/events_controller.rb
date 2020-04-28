class EventsController < ApplicationController

  def index
    @user = User.find_by_id(params[:user_id])
    @events = @user.bookmarked_events
    @tournaments = @user.tournaments
  end
  
  def new
    @tournament = Tournament.find_by_id(params[:tournament_id])
    @event = @tournament.events.build
  end

  def create
    @event = current_user.events.build(events_params)
    if @event.save
      redirect_to current_user
    else
      render :new
    end
  end

  def update
    @event = Event.find_by_id(params[:id])
    if current_user.id == @event.user_id
      @event.registration_status = true
      @event.save
      redirect_to current_user
    else
      security_redirect
    end
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    if current_user.id == @event.user_id
      @event.destroy
      redirect_to current_user
    else
      security_redirect
    end
  end

  private

  def events_params
    params.require(:event).permit(:tournament_id, :registration_status)
  end
end

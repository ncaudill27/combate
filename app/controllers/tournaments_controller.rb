class TournamentsController < ApplicationController
  before_action :set_tournament, only: [:show, :new, :edit, :update, :destroy]

  def index
    @tournaments = Tournament.all
  end

  def show
  end

  def new
  end

  def create
    @tournament = Tournament.create(tournament_params)

    redirect_to @tournament
  end

  def edit
  end

  def update
    @tournament.update(tournament_params)

    redirect_to @tournament
  end

  def destroy
    @tournament.destroy

    redirect_to tournaments_path
  end
  
  private

  def tournament_params
    params.require(:tournament).permit(:organization, :url, :date, :registration_open, :registration_close)
  end

  def set_tournament
    if params[:id]
      @tournament = Tournament.find_by_id(params[:id])
    else
      @tournament = Tournament.new
    end
  end
end

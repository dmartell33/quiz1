class SportsController < ApplicationController
  before_action :authenticate_user!, only: [:new] 

  def index
    @sports = Sport.all
  end
  
  def new
    @sport = Sport.new
  end
  
  def create
    Sport.create(sport_params)
    redirect_to root_path
  end

  def show
    @sport = Sport.find(params[:id])
  end
    
  def edit
    @sport = Sport.find(params[:id])
  end

  private

  def place_params
    params.require(:sport).permit(:name, :team, :city)
  end

end
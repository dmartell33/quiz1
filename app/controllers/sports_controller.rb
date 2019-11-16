class SportsController < ApplicationController

  def index
    @sports = Sport.all
  end
  
  def new
    @sport = Sport.new
  end



end 
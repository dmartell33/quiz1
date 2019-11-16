class TitlesController < ApplicationController
  def index  
    @sports = Sport.all
  end
end

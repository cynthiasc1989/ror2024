class SeriesController < ApplicationController
  def index
    @series = Series.all
  end

  def new
    @serie = Series.new
  end

  def create
    @serie = Series.new(series_params)

    if @serie.save
      redirect_to series_index_path
    else
      render :new
    end
  end
  
  def series_params
    params.require(:series).permit(:name, :synopsis, :director)
  end
end





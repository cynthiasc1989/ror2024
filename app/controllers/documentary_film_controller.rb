class DocumentaryFilmController < ApplicationController
  def index
    @documentary_film = DocumentaryFilm.all
  end

  def new
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(documentary_film_params)

    if @documentary_film.save
      redirect_to documentary_film_index_path
    else
      render :new
    end
  end

  def documentary_film_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end


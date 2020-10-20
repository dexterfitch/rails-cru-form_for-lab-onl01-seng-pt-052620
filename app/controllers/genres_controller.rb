class GenresController < ApplicationController

    def create
      @genre = Genre.create(strong_params(:genre, :name))
      redirect_to genre_path(@genre)
    end

    def new
      @genre = Genre.new
    end

    def edit
      @genre = Genre.find(params[:id])
    end

    def show
      @genre = Genre.find(params[:id])
    end

    def update
      @genre = Genre.find(params[:id])
      @genre.update(strong_params(:genre, :name, :bio))
      redirect_to genre_path(@genre)
    end

end

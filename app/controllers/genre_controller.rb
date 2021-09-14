class GenreController < ApplicationController
    def index
        @genres = Genre.all
        render :ok, json: @genres
    end

    def show
        @genre = Genre.find(params[:id])
        render 200, json: @genre
    end

    def create
        @genre = Genre.new(genre_params)
        if @genre.save
            render 201, json: @genre
        else
            render 422, json: @genre.errors
        end
    end

    def update
        @genre = Genre.find(params[:id])

        if @genre.update(movie_params)
            render 200, json: @genre
        else
            render 422, json: @genre.errors
        end
    end

    def destroy
        @genre = Genre.find(params[:id])

        if @genre.destroy
            head 204
        else
            render 422, json: @genre.errors
        end
    end

    protected
    def genre_params
        params.require(:genre).permit(:name, :description)
    end
end

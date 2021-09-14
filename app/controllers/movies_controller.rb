class MoviesController < ApplicationController
    def index
        @movies = Movie.all
        render :ok, json: @movies
    end

    def show
        @movie = Movie.find(params[:id])
        render 200, json: @movie
    end

    def create
        @movie = Movie.new(movie_params)
        if @movie.save
            render 201, json: @movie
        else
            render 422, json: @movie.errors
        end
    end

    def update
        @movie = Movie.find(params[:id])

        if @movie.update(movie_params)
            render 200, json: @movie
        else
            render 422, json: @movie.errors
        end
    end

    def destroy
        @movie = Movie.find(params[:id])

        if @movie.destroy
            head 204
        else
            render 422, json: @movie.errors
        end
    end

    protected
    def movie_params
        params.require(:movie).permit(:name, :servicio, :link, :description)
    end
end

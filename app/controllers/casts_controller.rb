class CastsController < ApplicationController
    def index
        @casts = Cast.all
        render :ok, json: @casts
    end

    def create
        @cast = Cast.new(cast_params)
        if @cast.save
            render 201, json: @cast
        else
            render 422, json: @cast.errors
        end
    end

    protected
    def cast_params
        params.require(:cast).permit(:movie_id, :actor_id)
    end
end

class ActorController < ApplicationController
    def index
        @actors = Actor.all
        render :ok, json: @actors
    end

    def show
        @actor = Actor.find(params[:id])
        render 200, json: @actor
    end

    def create
        @actor = Actor.new(actor_params)
        if @actor.save
            render 201, json: @actor
        else
            render 422, json: @actor.errors
        end
    end

    def update
        @actor = Actor.find(params[:id])

        if @actor.update(actor_params)
            render 200, json: @actor
        else
            render 422, json: @actor.errors
        end
    end

    def destroy
        @actor = Actor.find(params[:id])

        if @actor.destroy
            head 204
        else
            render 422, json: @actor.errors
        end
    end

    protected
    def actor_params
        params.require(:actor).permit(:name, :born_date, :bio)
    end
end

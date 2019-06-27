require "pry"
class SeasController < ApplicationController
    def index
        @seas = Sea.all
    end

    def new

    end
    
    def create
        @sea = Sea.create(sea_params)
        redirect_to sea_path(@sea.id)
    end

    def show
        @sea = Sea.all.find(params[:id])
    end

    def edit
        @sea = Sea.all.find(params[:id])
    end

    def update
        sea = Sea.all.find(params[:id])
        sea.update(sea_params)
        redirect_to sea_path(sea.id)
    end

    def destroy
        sea = Sea.all.find(params[:id])
        sea.destroy
        redirect_to seas_path
    end

    private

    def sea_params
        params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
    end

end
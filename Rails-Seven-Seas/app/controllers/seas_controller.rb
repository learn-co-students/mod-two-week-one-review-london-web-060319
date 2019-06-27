class SeasController < ApplicationController
  #define your controller actions here

  def index
    #displays index of seas
    @seas = Sea.all
  end

  def new
    #displays form
    @sea = Sea.new
  end

  def edit
    #displays edit form
    @sea = Sea.find(params[:id])
  end

  def show
    #displays one sea based on the id in the url
    @sea = Sea.find(params[:id])
  end

  def create
    #creates new sea
    @sea = Sea.new(sea_params)
    @sea.save
    redirect_to sea_path(@sea.id)
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update_attributes(sea_params)
    redirect_to sea_path(@sea.id)
  end

  def destroy
    Sea.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end

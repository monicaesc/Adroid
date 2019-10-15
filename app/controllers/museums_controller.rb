class MuseumsController < ApplicationController
  def index
    @museums = Museum.all
  end

  def new
    @museums = Museum.new
  end

  def show
    @museum = Museum.find(params[:id])
  end

  def create
      @museums = Museum.new(museum_params)
    end

    def edit
      @museums = Museum.find(params[:id])
  end

  def update
      museum = Museum.find(params[:id])
      museum.update(museum_params)
      redirect_to museum
    end


    def museum_params
      params.required(:museum).permit(:search)
    end

  private
    def museums_params
      params.required(:name).permit(:location)
    end

  def set_museum
    @museums = Museum.find(params[:id])
  end

end

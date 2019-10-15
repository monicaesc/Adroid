class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def new
    @exhibition = Exhibition.new
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end

  def create
    exhibition = Exhibition.new(exhibition_params)
    exhibition.save
    redirect_to exhibitions_path
    end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    @exhibition.update(artist_params)
    redirect_to artist_path(@exhibition)
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy
    redirect_to root_path
  end

  private

  def exhibition_params
      params.require(:exhibition).permit(:museum_id, :artist_id)
  end
end

class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by({ "id" => params["id"] })
    @entries = Entry.where({ "place_id" => @place["id"] })
  end

  def new
  end

  def create
    @place = Place.new
    @place["name"] = params["name"]
    @place["image"] = params["image"]
    @place.uploaded_image.attach(params["uploaded_image"])
    @place.save
    redirect_to "/places"
  end

end

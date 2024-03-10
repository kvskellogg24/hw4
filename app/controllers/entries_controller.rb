class EntriesController < ApplicationController

  def show
    if User.find_by({"id" => session["user_id"]}) != nil
      @entry = Entry.find_by({ "place_id" => params["place_id"] })
    else
      flash["notice"] = "Login first please."
      redirect_to "/login"
    end
  end

  def new
    @entry = Entry.find_by({ "place_id" => params["place_id"] })
  end

  def create
    @entry = Entry.new
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]
    @entry.save
    redirect_to "/places/#{@entry["place_id"]}"
  end

end

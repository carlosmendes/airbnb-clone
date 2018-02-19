class FlatsController < ApplicationController
  # run load_flats method before all the others
  before_action :load_flats

  def index
  end

  def show
    @flat = @flats[params[:id].to_i - 1]
  end


  private

  def load_flats
    require "open-uri"

    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end

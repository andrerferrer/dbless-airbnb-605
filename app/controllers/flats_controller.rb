require "open-uri"

class FlatsController < ApplicationController
  def index
    # render index.html.erb
    @flats = fetch_flats
  end

  def show
   
    flats = fetch_flats

    id = params[:id].to_i

    @flat = flats.find { |flat| flat['id'] == id } 
  end

  private

  def fetch_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    JSON.parse(open(url).read)
  end
end

# RAILS CRUD PATTERNS
# 7 PATHS

# C (2)
# R (2)
  # INDEX - to read many (maybe all)
  # SHOW - to read ONE
# U (2)
# D (1)
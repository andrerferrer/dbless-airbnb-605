require "open-uri"

class FlatsController < ApplicationController
  def index
    # render index.html.erb
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(open(url).read)

    id = params[:id].to_i

    @flat = flats.find { |flat| flat['id'] == id } 
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
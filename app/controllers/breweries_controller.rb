require 'rest-client';

class BreweriesController < ApplicationController

    def index
        term=params[:term]
        url="https://api.openbrewerydb.org/breweries?by_city=#{term}"
        @res = RestClient.get(url)
        render json: @res
    end
end

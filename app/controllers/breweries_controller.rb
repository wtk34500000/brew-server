require 'rest-client';

class BreweriesController < ApplicationController

    def get_breweries
        term=params[:term]
        url="https://api.openbrewerydb.org/breweries?by_city=#{term}&per_page=50"
        @res = RestClient.get(url)
        render json: @res
    end
end

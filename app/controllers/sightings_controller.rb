class SightingsController < ApplicationController
    def index
        sightings = Sighting.all 
        render json: JSON.pretty_generate(JSON.parse(SightingSerializer.new(sightings).to_serialized_json))
    end
    
    def show
        sighting = Sighting.find(params[:id])
        render json: JSON.pretty_generate(JSON.parse(SightingSerializer.new(sighting).to_serialized_json))
    end
end

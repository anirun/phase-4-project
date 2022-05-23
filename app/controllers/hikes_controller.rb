class HikesController < ApplicationController
    def index #get "/hikes/:id"
        if params[:hike_id]
            hike = Hike.find(params[:hike_id])
            render json: hike
        else #get "/hikes"
            render json: HikeSerializer.new(Hike.all).serializable_hash
        end
    end

    def show #get "/hikes/:id"
        render json: serialized_hike
    end
end

class HomesController < ApplicationController
    def index
        p ".........START........."
        sleep(3)
        p ".........END........."
        render json: { res: true }
    end
end
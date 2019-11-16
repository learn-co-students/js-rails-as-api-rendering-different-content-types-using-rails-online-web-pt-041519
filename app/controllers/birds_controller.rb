class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render json: "Remember that JSON is just object notation converted to string data, so strings also work here"
    # render json: {message: "Hashes of data will get converted to JSON"}
    # render json: ["As", "well", "as", "arrays"]
    # render json: @birds
    # render json: {birds: @birds, messages: ['Hello birds', 'Goodbye birds']}

    # no need to use instance variables anymore because we're not using erb!
    birds = Bird.all
    render json: birds
  end
end

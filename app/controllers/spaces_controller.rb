class SpacesController < ApplicationController
  def show
    @lists = Space.find(params[:id]).lists
  end
end

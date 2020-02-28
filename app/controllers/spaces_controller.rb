class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find_by slug: params[:slug]

    if (!@space)
      render 'spaces/not_found'
    end
  end

  def new
  end

  def edit
  end

  def create
    @space = Space.new

    if @space.save
      redirect_to @space
    else
      render 'home/show'
    end
  end

  def update
  end

  def destroy
  end
end

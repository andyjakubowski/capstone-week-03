class TokensController < ApplicationController
  before_action :set_list

  # GET /tokens
  # GET /tokens.json
  def index
    @tokens = @list.tokens
  end

  # GET /tokens/1
  # GET /tokens/1.json
  def show
    @token = Token.find(params[:id])
    # @list = List.find(params[:list_id])
  end

  # GET /tokens/new
  def new
    @token = Token.new
  end

  # GET /tokens/1/edit
  def edit
    @token = Token.find(params[:id])
  end

  # POST /tokens
  # POST /tokens.json
  def create
    @token = @list.tokens.new(token_params)

    respond_to do |format|
      if @token.save
        format.html { redirect_to list_path(@list), notice: 'Token was successfully created.' }
        # format.json { render :show, status: :created, location: @token }
      else
        format.html { render 'lists/show' }
        # format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tokens/1
  # PATCH/PUT /tokens/1.json
  def update
    @list = List.find(params[:list_id])
    @token = @list.tokens.find(params[:id])

    if @token.update(token_params)
      redirect_to @list
      # format.html { redirect_to @list, notice: 'Token was successfully updated.' }
    else
      render 'edit'
    end
  end

  # DELETE /tokens/1
  # DELETE /tokens/1.json
  def destroy
    @list = List.find(params[:list_id])
    @token = @list.tokens.find(params[:id])
    @token.destroy
    redirect_to list_path(@list)
  end

  private

    def set_list
      @list = List.find(params[:list_id])
    end

    # Only allow a list of trusted parameters through.
    def token_params
      params.require(:token).permit(:name, :value, :category_id)
    end
end

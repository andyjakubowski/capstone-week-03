class TokensController < ApplicationController
  before_action :set_list

  # GET /lists/5/tokens
  # GET /lists/5/tokens.json
  def index
    @tokens = @list.tokens
  end

  # GET /lists/5/tokens/1
  # GET /lists/5/tokens/1.json
  def show
    @token = Token.find(params[:id])
    # @list = List.find(params[:list_id])
  end

  # GET lists/5/tokens/new
  def new
    @token = Token.new
  end

  # GET /lists/5/tokens/1/edit
  def edit
    @token = Token.find(params[:id])
  end

  # POST /lists/5/tokens
  # POST /lists/5/tokens.json
  def create
    @token = @list.tokens.new(token_params)
    respond_to do |format|
      if @token.save
        format.html { redirect_to list_path(@list), notice: 'Token was successfully created.' }
        format.json { render :show, status: :created, location: list_token_url(@list, @token) }
      else
        format.html { render 'lists/show' }
        format.json { render json: @token.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/5/tokens/1
  # PATCH/PUT /lists/5/tokens/1.json
  def update
    @token = @list.tokens.find(params[:id])

    respond_to do |format|
      if @token.update(token_params)
        # redirect_to @list
        format.html { redirect_to @list, notice: 'Token was successfully updated.' }
        format.json { render :show, status: :ok, location: list_token_url(@list, @token) }
      else
        format.html { render 'edit' }
      end
    end

    
  end

  # DELETE /lists/5/tokens/1
  # DELETE /lists/5/tokens/1.json
  def destroy
    @token = @list.tokens.find(params[:id])
    @token.destroy

    respond_to do |format|
      format.html { redirect_to @list }
      format.json { head :no_content }
    end
  end

  private

    def set_list
      @list = List.find(params[:list_id])
    end

    # Only allow a list of trusted parameters through.
    def token_params
      params.require(:token).permit(:name, :value, :category_id, :list_id)
    end
end

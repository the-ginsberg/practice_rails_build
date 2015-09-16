class RussianRoulettesController < ApplicationController
  before_action :set_russian_roulette, only: [:show, :edit, :update, :destroy]
  before_action :set_bulloc, only: :create
  before_action :set_round, only: :create
  before_action :set_alive, only: :create

  # GET /russian_roulettes
  # GET /russian_roulettes.json
  def index
    @russian_roulettes = RussianRoulette.all
  end

  # GET /russian_roulettes/1
  # GET /russian_roulettes/1.json
  def show
  end

  # GET /russian_roulettes/new
  def new
    @russian_roulette = RussianRoulette.new
    @russian_roulette.bulloc = @bulloc
    @russian_roulette.round = @round
    @russian_roulette.alive = @alive
  end

  # GET /russian_roulettes/1/edit
  def edit
  end

  # POST /russian_roulettes
  # POST /russian_roulettes.json
  def create
    @russian_roulette = RussianRoulette.new(russian_roulette_params)
    @russian_roulette.bulloc = @bulloc
    @russian_roulette.round = @round
    @russian_roulette.alive = @alive

    respond_to do |format|
      if @russian_roulette.save
        format.html { redirect_to @russian_roulette, notice: 'Russian roulette was successfully created.' }
        format.json { render :show, status: :created, location: @russian_roulette }
      else
        format.html { render :new }
        format.json { render json: @russian_roulette.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /russian_roulettes/1
  # PATCH/PUT /russian_roulettes/1.json
  def update
    respond_to do |format|
      if @russian_roulette.update(russian_roulette_params)
        format.html { redirect_to @russian_roulette, notice: 'Russian roulette was successfully updated.' }
        format.json { render :show, status: :ok, location: @russian_roulette }
      else
        format.html { render :edit }
        format.json { render json: @russian_roulette.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /russian_roulettes/1
  # DELETE /russian_roulettes/1.json
  def destroy
    @russian_roulette.destroy
    respond_to do |format|
      format.html { redirect_to russian_roulettes_url, notice: 'Russian roulette was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_russian_roulette
      @russian_roulette = RussianRoulette.find(params[:id])
    end

    def set_bulloc
      @bulloc = rand(1..6)
    end

    def set_round
      @round = 0
    end

    def set_alive
      @alive = true
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def russian_roulette_params
      params.require(:russian_roulette).permit(:player, :bulloc, :round, :alive)
    end
end

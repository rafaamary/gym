class AcademiesController < ApplicationController
  before_action :set_academy, only: %i[ show edit update destroy ]

  # GET /academies or /academies.json
  def index
    @academies = Academy.all
  end

  # GET /academies/1 or /academies/1.json
  def show
  end

  # GET /academies/new
  def new
    @academy = Academy.new
  end

  # GET /academies/1/edit
  def edit
  end

  # POST /academies or /academies.json
  def create
    @academy = Academy.new(academy_params)

    respond_to do |format|
      if @academy.save
        format.html { redirect_to academy_url(@academy), notice: "Academy was successfully created." }
        format.json { render :show, status: :created, location: @academy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @academy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academies/1 or /academies/1.json
  def update
    respond_to do |format|
      if @academy.update(academy_params)
        format.html { redirect_to academy_url(@academy), notice: "Academy was successfully updated." }
        format.json { render :show, status: :ok, location: @academy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @academy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academies/1 or /academies/1.json
  def destroy
    @academy.destroy

    respond_to do |format|
      format.html { redirect_to academies_url, notice: "Academy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academy
      @academy = Academy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def academy_params
      params.require(:academy).permit(:name, :phone, :email)
    end
end

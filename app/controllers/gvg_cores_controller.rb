class GvgCoresController < ApplicationController
  before_action :set_gvg_core, only: [:show, :edit, :update, :destroy]

  # GET /gvg_cores
  # GET /gvg_cores.json
  def index
    @gvg_cores = GvgCore.all
  end

  # GET /gvg_cores/1
  # GET /gvg_cores/1.json
  def show
  end

  # GET /gvg_cores/new
  def new
    @gvg_core = GvgCore.new
  end

  # GET /gvg_cores/1/edit
  def edit
  end

  # POST /gvg_cores
  # POST /gvg_cores.json
  def create
    @gvg_core = GvgCore.new(gvg_core_params)
    @gvg_core.user_id = current_user.id

    respond_to do |format|
      if @gvg_core.save
        current_user.gvg_core_id = @gvg_core.id
        current_user.save
        format.html { redirect_to @gvg_core, notice: 'Gvg core was successfully created.' }
        format.json { render :show, status: :created, location: @gvg_core }
      else
        format.html { render :new }
        format.json { render json: @gvg_core.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gvg_cores/1
  # PATCH/PUT /gvg_cores/1.json
  def update
    respond_to do |format|
      if @gvg_core.update(gvg_core_params)
        format.html { redirect_to @gvg_core, notice: 'Gvg core was successfully updated.' }
        format.json { render :show, status: :ok, location: @gvg_core }
      else
        format.html { render :edit }
        format.json { render json: @gvg_core.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gvg_cores/1
  # DELETE /gvg_cores/1.json
  def destroy
    @gvg_core.destroy
    respond_to do |format|
      format.html { redirect_to gvg_cores_url, notice: 'Gvg core was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gvg_core
      @gvg_core = GvgCore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gvg_core_params
      params.require(:gvg_core).permit(:name, :description, :recruiting, :recruiting_description, :avatar, :user_id)
    end
end

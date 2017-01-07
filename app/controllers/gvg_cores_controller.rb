class GvgCoresController < ApplicationController
  before_action :set_gvg_core, only: [:show, :edit, :update, :destroy]

  # GET /gvg_cores
  # GET /gvg_cores.json
  def index
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
    @gvg_cores = GvgCore.all
  end

  # GET /gvg_cores/1
  # GET /gvg_cores/1.json
  def show
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
  end

  # GET /gvg_cores/new
  def new
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
    @gvg_core = GvgCore.new
  end

  # GET /gvg_cores/1/edit
  def edit
    if !current_user || current_user.status != "1"
      redirect_to new_user_session_path
    end
  end

  # POST /gvg_cores
  # POST /gvg_cores.json
  def create
    @gvg_core = GvgCore.new(gvg_core_params)
    @gvg_core.user_id = current_user.id

    respond_to do |format|
      if @gvg_core.save
        current_user.gvg_core_id = @gvg_core.id
        current_user.core_status = 1
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

  def invite_core
    user = User.find(params[:user])
    user.core_status = 2
    user.gvg_core = current_user.gvg_core
    if user.save
      render :json => {
        status: "success"
      }
  else
      render :json => {
        status: "failed"
      } 
  end

  end

  def accept_core
    current_user.core_status = 1
    current_user.save
    redirect_to gvg_cores_path
  end

  def reject_core
    if params[:user]
      user = User.find(params[:user])
    else
      user = current_user
    end
    gvg = user.gvg_core
    user.core_status = 3
    user.gvg_core = nil
    user.save
    if params[:user]
      redirect_to gvg
    else
      redirect_to gvg_cores_path
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

class RegistroOrdensController < ApplicationController
  before_action :set_registro_orden, only: [:show, :edit, :update, :destroy]

  # GET /registro_ordens
  # GET /registro_ordens.json
  def index
    @registro_ordens = RegistroOrden.all
  end

  # GET /registro_ordens/1
  # GET /registro_ordens/1.json
  def show
  end

  # GET /registro_ordens/new
  def new
    @registro_orden = RegistroOrden.new
  end

  # GET /registro_ordens/1/edit
  def edit
  end

  # POST /registro_ordens
  # POST /registro_ordens.json
  def create
    params[:registro_orden].permit! #para permitir el acceso de las peticiones de ordenes
    @registro_orden = RegistroOrden.new(params[:registro_orden])

    respond_to do |format|
      if @registro_orden.save
        format.html { redirect_to @registro_orden, notice: 'Registro orden was successfully created.' }
        format.json { render :show, status: :created, location: @registro_orden }
      else
        format.html { render :new }
        format.json { render json: @registro_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_ordens/1
  # PATCH/PUT /registro_ordens/1.json
  def update
    respond_to do |format|
      if @registro_orden.update(registro_orden_params)
        format.html { redirect_to @registro_orden, notice: 'Registro orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_orden }
      else
        format.html { render :edit }
        format.json { render json: @registro_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_ordens/1
  # DELETE /registro_ordens/1.json
  def destroy
    @registro_orden.destroy
    respond_to do |format|
      format.html { redirect_to registro_ordens_url, notice: 'Registro orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_orden
      @registro_orden = RegistroOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_orden_params
      params.require(:registro_orden).permit(:numero_orden, :fecha)
    end
end

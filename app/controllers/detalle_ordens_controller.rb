class DetalleOrdensController < ApplicationController
  before_action :set_detalle_orden, only: [:show, :edit, :update, :destroy]

  # GET /detalle_ordens
  # GET /detalle_ordens.json
  def index
    @detalle_ordens = DetalleOrden.all
  end

  # GET /detalle_ordens/1
  # GET /detalle_ordens/1.json
  def show
  end

  # GET /detalle_ordens/new
  def new
    @detalle_orden = DetalleOrden.new
  end

  # GET /detalle_ordens/1/edit
  def edit
  end

  # POST /detalle_ordens
  # POST /detalle_ordens.json
  def create
    @detalle_orden = DetalleOrden.new(detalle_orden_params)

    respond_to do |format|
      if @detalle_orden.save
        format.html { redirect_to @detalle_orden, notice: 'Detalle orden was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_orden }
      else
        format.html { render :new }
        format.json { render json: @detalle_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_ordens/1
  # PATCH/PUT /detalle_ordens/1.json
  def update
    respond_to do |format|
      if @detalle_orden.update(detalle_orden_params)
        format.html { redirect_to @detalle_orden, notice: 'Detalle orden was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_orden }
      else
        format.html { render :edit }
        format.json { render json: @detalle_orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_ordens/1
  # DELETE /detalle_ordens/1.json
  def destroy
    @detalle_orden.destroy
    respond_to do |format|
      format.html { redirect_to detalle_ordens_url, notice: 'Detalle orden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_orden
      @detalle_orden = DetalleOrden.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_orden_params
      params.require(:detalle_orden).permit(:cantidad, :precio_venta)
    end
end

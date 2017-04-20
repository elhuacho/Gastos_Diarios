class GastosDiariosController < ApplicationController
  before_action :set_gastos_diario, only: [:show, :edit, :update, :destroy]

  # GET /gastos_diarios
  # GET /gastos_diarios.json
  def index
    @gastos_diarios = GastosDiario.all.paginate(page: params[:page], per_page:2)
  end

  # GET /gastos_diarios/1
  # GET /gastos_diarios/1.json
  def show
  end

  # GET /gastos_diarios/new
  def new
    @gastos_diario = GastosDiario.new
  end

  # GET /gastos_diarios/1/edit
  def edit
  end

  # POST /gastos_diarios
  # POST /gastos_diarios.json
  def create
    @gastos_diario = GastosDiario.new(gastos_diario_params)

    respond_to do |format|
      if @gastos_diario.save
        format.html { redirect_to @gastos_diario, notice: 'Gastos diario was successfully created.' }
        format.json { render :show, status: :created, location: @gastos_diario }
      else
        format.html { render :new }
        format.json { render json: @gastos_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gastos_diarios/1
  # PATCH/PUT /gastos_diarios/1.json
  def update
    respond_to do |format|
      if @gastos_diario.update(gastos_diario_params)
        format.html { redirect_to @gastos_diario, notice: 'Gastos diario was successfully updated.' }
        format.json { render :show, status: :ok, location: @gastos_diario }
      else
        format.html { render :edit }
        format.json { render json: @gastos_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gastos_diarios/1
  # DELETE /gastos_diarios/1.json
  def destroy
    @gastos_diario.destroy
    respond_to do |format|
      format.html { redirect_to gastos_diarios_url, notice: 'Gastos diario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gastos_diario
      @gastos_diario = GastosDiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gastos_diario_params
      params.require(:gastos_diario).permit(:descripcion, :categoria, :monto)
    end
end

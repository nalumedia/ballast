class DelivertosController < ApplicationController
  before_action :set_deliverto, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @delivertos = Deliverto.all
    respond_with(@delivertos)
  end

  def show
    respond_with(@deliverto)
  end

  def new
    @deliverto = Deliverto.new
    respond_with(@deliverto)
  end

  def edit
  end

  def create
    @deliverto = Deliverto.new(deliverto_params)
    @deliverto.save
    respond_with(@deliverto)
  end

  def update
    @deliverto.update(deliverto_params)
    respond_with(@deliverto)
  end

  def destroy
    @deliverto.destroy
    respond_with(@deliverto)
  end

  private
    def set_deliverto
      @deliverto = Deliverto.find(params[:id])
    end

    def deliverto_params
      params.require(:deliverto).permit(:deliverto_street, :deliverto_city, :delivertto_state, :deliverto_zip, :deliverto_country, :purchase_id, :deliverto_instructions)
    end
end

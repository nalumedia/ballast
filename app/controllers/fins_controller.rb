class FinsController < ApplicationController
  before_action :set_fin, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fins = Fin.all
    respond_with(@fins)
  end

  def show
    respond_with(@fin)
  end

  def new
    @fin = Fin.new
    respond_with(@fin)
  end

  def edit
  end

  def create
    @fin = Fin.new(fin_params)
    @fin.save
    respond_with(@fin)
  end

  def update
    @fin.update(fin_params)
    respond_with(@fin)
  end

  def destroy
    @fin.destroy
    respond_with(@fin)
  end

  private
    def set_fin
      @fin = Fin.find(params[:id])
    end

    def fin_params
      params.require(:fin).permit(:name, :model, :base, :height, :description, :customer_price, :ballast_price, :image)
    end
end

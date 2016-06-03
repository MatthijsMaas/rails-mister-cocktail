class DosesController < ApplicationController
  before_action :find_cocktail, only: [:new, :create, :destroy, :show]
  def index
    @doses = Dose.all
  end

  # def show
  #   @doses = Dose.find(params[:id])
  # end

  def new
    @dose = Dose.new
    @ingredient = Ingredient.all
  end

  def create
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@cocktail)  #
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end

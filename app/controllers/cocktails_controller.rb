class CocktailsController < ApplicationController
 before_action :find_cocktail, only: [:show, :edit, :update, :destroy]

  def index         # GET /cocktails
    @cocktails = Cocktail.all
  end

  def show          # GET /cocktails/:id
    # @dose = Dose.new
    @doses = Dose.all
  end

  def new           # GET /cocktails/new
   @cocktail = Cocktail.new
  end

  def create        # POST /cocktails
    @cocktail_params = cocktail_params
    @cocktail = Cocktail.new(@cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

#   def edit          # GET /cocktails/:id/edit
#   end

#   def update        # PATCH /cocktails/:id
#    # @cocktail.update(params[:cocktail])
#    if @cocktail.update(cocktail_params)
#     redirect_to cocktail_path(@cocktail)
#   else
#     render :edit
#   end
# end

# def destroy
#     @cocktail = Cocktail.find(params[:id])
#     @cocktail.destroy
#     redirect_to root_path
#   end

private

def cocktail_params
  params.require(:cocktail).permit(:name)
end
def find_cocktail
  @cocktail = Cocktail.find(params[:id])
end


end






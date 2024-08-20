class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    # FIND THE RIGHT PET
    @pet = Pet.find(params[:id])
  end

  def new
    # create the empty instance
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    # raise
    @pet.save

    redirect_to pets_path
  end

  def edit
    # Find the right instance
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet.id) #=> /pets/623542
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    redirect_to pets_path, status: :see_other
  end

  private

  # STRONG PARAMS
  def pet_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end

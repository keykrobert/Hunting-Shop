class WeaponsController < ApplicationController
  before_action :authenticate_user!, except:[:index,:show]
  
  before_action :find_weapon, only: [:show, :edit, :update, :destroy]
  
  def index
   @weapons = Weapon.all
  end

  def new
    @Weapon = Weapon.new
  end
  
  def create
    @weapon = current_user.weapons.build(weapon_params)
    if @weapon.save
    redirect_to root_path
    end
  end
  
  def show
    @weapon = Weapon.find(params[:id])
  end
  
  def edit
  
  end
  
  def update
    if @weapon.update(weapon_params)
      redirect_to root_path
    end
  end
  
  def destroy
    @weapon.destroy
    redirect_to root_path
  end
  
  private

  def weapon_params
    params.require(:weapon).permit(:name, :desc, :price, photos: [])
  end

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end
end

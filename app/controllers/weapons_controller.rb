class WeaponsController < ApplicationController
  before_action :authenticate_user!, except:[:index,:show]
  
  before_action :find_weapon, only: [:show, :edit, :update, :destroy]
  
  def index
   @weapons = Weapon.all
  end

  
  def show
    @weapon = Weapon.find(params[:id])
  end
  
  def edit
  
  end
  
  private

  def weapon_params
    params.require(:weapon).permit(:name, :desc, :price, photos: [])
  end

  def find_weapon
    @weapon = Weapon.find(params[:id])
  end
end

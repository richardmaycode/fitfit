module Admin
  class EquipmentController < ApplicationController
    layout 'admin'
    before_action :set_equipment, only: %i[show edit update destroy]

    def index
      @equipment = Equipment.all
    end

    def new
      @equipment = Equipment.new
    end

    def create
      @equipment = Equipment.create(equipment_params)

      if @equipment.save
        redirect_to admin_equipment_index_path
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit; end

    def update
      @equipment.update(equipment_params)

      if @equipment.save
        redirect_to admin_equipment_index_path
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @equipment.destroy
      redirect_to admin_equipment_index_path
    end

    private

    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    def equipment_params
      params.require(:equipment).permit(:name, :description)
    end
  end
end

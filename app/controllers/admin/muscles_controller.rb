class Admin::MusclesController < ApplicationController
  layout 'admin'

  before_action :set_muscle, only: %i[show edit update destroy]

  def index
    @muscles = Muscle.all
  end

  def show; end

  def new
    @muscle = Muscle.new
  end

  def create
    @muscle = Muscle.new(muscle_params)

    if @muscle.save
      redirect_to admin_muscles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @muscle.update(muscle_params)

    if @muscle.save
      redirect_to admin_muscles_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @muscle.destroy
    redirect_to admin_muscles_path
  end

  private

  def set_muscle
    @muscle = Muscle.find(params[:id])
  end

  def muscle_params
    params.require(:muscle).permit(:name)
  end
end

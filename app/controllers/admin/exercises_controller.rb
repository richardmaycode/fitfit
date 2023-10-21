class Admin::ExercisesController < ApplicationController
  layout 'admin'

  before_action :set_exercise, only: %i[show edit update destroy]

  def index
    @exercises = Exercise.includes(:muscles)
  end

  def show; end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)

    if @exercise.save
      redirect_to admin_exercises_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @exercise.update(exercise_params)

    if @exercise.save
      redirect_to admin_exercises_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @exercise.destroy
    redirect_to admin_exercises_path
  end

  private

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

  def exercise_params
    params.require(:exercise).permit(:name, :description, muscle_ids: [])
  end
end

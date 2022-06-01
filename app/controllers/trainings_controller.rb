class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training  = Training.new(training_params)
    if @training.save
      redirect_to trainings_path
    else
      render :new
    end
  end

  def show
    @trainings = Training.find(params[:id])
  end

  def destroy
    @training = Training.find(params[:id])
    @training.destroy
    redirect_to trainings_path, notice:"削除しました"
  end

  private

  def training_params
    params.require(:training).permit(:training_name_id, :weight, :setting_number_id, :set_rep_id, :rest_time_id, :memo, :start_time)
  end
end

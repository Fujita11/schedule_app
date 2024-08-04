class SchedulesController < ApplicationController
  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      flash[:notice] = 'スケジュールが作成されました。'
      redirect_to @schedule
    else
      flash[:alert] = 'スケジュールの作成に失敗しました。'
      render :new
    end
  end

  private

  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :content)
  end
end

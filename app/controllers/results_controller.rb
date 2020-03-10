class ResultsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def new
    @result = current_user.results.build if logged_in?
  end

  def create
    @result = current_user.results.build(result_params)
    if @result.save
      flash[:success] = "Result Created!"
      redirect_to user_path(current_user)
    else
      render 'result/new'
    end
  end
  
  def edit
    @result = Result.find(params[:id])
  end

  def update
    @result = Result.find(params[:id])
    if @result.update_attributes(result_params)
      flash[:success] = "Result updated"
      redirect_to user_path(@user)
    else
      render 'result/edit'
    end
  end

  def destroy
    
  end

  private

    def result_params
      params.require(:result).permit(:start_time, :bench_press,
                                     :deadlift, :squat)
    end

end

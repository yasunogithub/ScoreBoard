class ResultsController < ApplicationController
  def create
    @score = Score.find(params[:score_id])
    @result = @score.results.create(result_params)
    redirect_to score_path(@score)
  end
  private
  def result_params
    params.require(:result).permit(:player_name, :result_score,:score_id)
  end
end

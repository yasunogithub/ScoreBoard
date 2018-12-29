class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end
  def new
    @score = Score.new
  end
def update
  @score = Score.find(params[:id])

  if @score.update(score_params)
    redirect_to @score
  else
    render 'edit'
  end
end
  def edit
    @score = Score.find(params[:id])
  end
  def create
    @score = Score.new(score_params)
    if @score.save
      redirect_to @score
    else
      render 'new'
    end
  end
  def show
    @score = Score.find(params[:id])
  end
  private
  def score_params
    params.require(:score).permit(:title, :score,:player)
  end
end

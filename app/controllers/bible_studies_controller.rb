class BibleStudiesController < ApplicationController

  def index
    @bible_studies = BibleStudy.all
  end


  def show
    @bible_study = BibleStudy.find(params[:id])
  end

  def new
    @bible_study = BibleStudy.new
  end

  def edit
    @bible_study = BibleStudy.find(params[:id])
  end

  def create
    @bible_study = BibleStudy.new(bible_study_params)

    if @bible_study.save
      redirect_to @bible_study
    else
      render 'new'
    end
  end

  def update
    @bible_study = BibleStudy.find(params[:id])

    if @bible_study.update(bible_study_params)
      redirect_to @bible_study
    else
      render 'edit'
    end
  end

  private
    def bible_study_params
      params.require(:bible_study).permit(:name, :date, :location, :description)
    end
end

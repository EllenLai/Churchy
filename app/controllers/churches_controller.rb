class ChurchesController < ApplicationController

  def index
    @churches = Church.all.paginate(:per_page => 1, :page => params[:page])
  end



  def show
    @church = Church.find(params[:id])
  end

  def new
    @church = Church.new
  end

  def edit
    @church = Church.find(params[:id])
  end

  def create
    @church = Church.new(church_params)

    if @church.save
      redirect_to @church
    else
      render 'new'
    end
  end

  def update
    @church = Church.find(params[:id])

    if @church.update(church_params)
      redirect_to @church
    else
      render 'edit'
    end
  end

  private
    def church_params
      params.require(:church).permit(:name, :description)
    end

end

class SectionsController < ApplicationController

  def index
    @sections = Section.all
    @section = Section.new
    render('index.html.erb')
  end

  def create
    @sections = Section.all
    @section = Section.new(params[:section])
    if @section.save
      redirect_to('/sections')
    else
      render('/sections/index.html.erb')
    end
  end

  def show
    @section = Section.find(params[:id])
    render('/sections/show.html.erb')
  end

  def edit

  end

  def update

  end

  def destroy

  end

end

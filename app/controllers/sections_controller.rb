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
    @section = Section.find(params[:id])
    render('/sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
    if @section.update(params[:section])
      redirect_to("/sections/#{@section.id}")
    else
      render('/sections/edit.html.erb')
    end
  end

  def destroy

  end

end

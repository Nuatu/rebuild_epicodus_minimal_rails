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
      render('index.html.erb')
    end
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end

end

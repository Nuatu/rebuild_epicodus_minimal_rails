class SectionsController < ApplicationController

  def index
    @sections = Section.all
    @section = Section.new
    render('index.html.erb')
  end

  def create

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

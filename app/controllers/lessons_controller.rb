class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render('index.html.erb')
  end

  def new
    @lesson = Lesson.new
    render('new.html.erb')
  end

end

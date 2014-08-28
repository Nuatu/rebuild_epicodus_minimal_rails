class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render('index.html.erb')
  end

  def new
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('new.html.erb')
  end



end

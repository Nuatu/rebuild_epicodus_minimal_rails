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

  def create
    @lessons = Lesson.all
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to('/lessons')
    else
      render('new.html.erb')
    end
  end

end

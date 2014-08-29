class LessonsController < ApplicationController


  def index
    @lessons_ordered = Lesson.order(number: :asc)
    @lessons = Lesson.all
    render('index.html.erb')
  end

  def new
    @sections = Section.all
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('new.html.erb')
  end

  def create
    @sections = Section.all
    @lessons = Lesson.all
    @lesson = Lesson.new(params[:lesson])
    if @lesson.save
      redirect_to('/lessons/new')
    else
      render('new.html.erb')
    end
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('show.html.erb')
  end

  def edit
    @sections = Section.all
    @lesson = Lesson.find(params[:id])
    render('edit.html.erb')
  end

  def update
    @sections = Section.all
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('edit.html.erb')
    end
  end

  def delete
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to('/lessons')
  end

end

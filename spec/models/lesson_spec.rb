require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_numericality_of(:number).only_integer }
  it { should validate_presence_of :context}
  it { should validate_uniqueness_of :number}
  it { should belong_to :section}

  context '#next' do
    it "returns the next highest lesson" do
      current_lesson = Lesson.create({name: "Code Wizardry", context: "stuff about being a wizard", number: 1})
      next_lesson = Lesson.create({name: "Code Wizardry Pt II", context: "stuff about being a wizard", number: 3})
      expect(current_lesson.next).to eq next_lesson
    end
  end

  context '#prev' do
    it "returns the previous lesson" do
      lesson1 = Lesson.create({name: "Code Wizardry", context: "stuff about being a wizard", number: 1})
      lesson2 = Lesson.create({name: "Code Wizardry Pt II", context: "stuff about being a wizard", number: 3})
      expect(lesson2.prev).to eq lesson1
    end
  end

end

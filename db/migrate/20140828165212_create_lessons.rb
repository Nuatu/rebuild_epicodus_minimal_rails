class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :context
      t.integer :number

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :title, default: ""
      t.string :description
      t.boolean :published, default: false
      t.boolean :visible, default: false

      t.timestamps # created_at & updated_at
    end
  end
end

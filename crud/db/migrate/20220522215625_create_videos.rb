class CreateVideos < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :description
      t.integer :duration, default: 0
      t.boolean :visible, default: false

      t.timestamps
    end
  end
end

class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :title
      t.text :start
      t.text :end
      t.text :body
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end

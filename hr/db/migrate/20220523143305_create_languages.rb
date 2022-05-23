class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :language
      t.text :level
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end

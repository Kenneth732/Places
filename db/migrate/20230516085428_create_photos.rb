class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :category
      t.string :discount
      t.references :photographer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.belongs_to :album, index: true, foreign_key: true
      t.text :description, default: ''
      t.string :image

      t.timestamps
    end
  end
end

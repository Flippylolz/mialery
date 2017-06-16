class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end

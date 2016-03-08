class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :filename
      t.references :blog, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :blogs
  end
end

class CreatePhotos < ActiveRecord::Migration

  def change
    create_table :photos do |t|

    t.string :name
    t.string :title 
    t.text :description 
    t.string :image

      t.timestamps
    end
  end
end

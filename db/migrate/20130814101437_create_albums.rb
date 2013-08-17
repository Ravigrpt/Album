class CreateAlbums < ActiveRecord::Migration
	  
	  def change
	    create_table :albums do |t|
		    t.string :name
		    t.text :description 
		    t.string :title	 
	      	t.timestamps
	    end
	  end
	  
end

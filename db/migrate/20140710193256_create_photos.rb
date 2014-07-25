class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.column :prompt_id, 		:integer
    	t.column :image_file, 		:string		
    	t.column :date_time, 		:datetime
    	t.column :user_name, 		:string
    	t.column :creation_title, 	:string
    end
  end
end

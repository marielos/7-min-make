class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.column :prompt_id, 	:integer
    	t.column :file_name, 	:string		
    	t.column :date_time, 	:datetime
    	t.column :user_name, 	:string
    	t.column :user_email, 	:string
    end
  end
end

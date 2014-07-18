class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
    	t.column :title, 		:string
    	#t.column :date_time, 	:datetime
     # t.timestamps
    end
  end
end

class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.integer :training_name_id,    null: false 
      t.string :weight,   null: false 
      t.string :setting_number_id,   null: false 
      t.string :set_rep_id,   null: false
      t.string :rest_time_id,  null: false
      t.text :memo

      
       t.datetime :start_time
      t.timestamps
    end
  end
end

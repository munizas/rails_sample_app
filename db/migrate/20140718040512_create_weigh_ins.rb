class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.date :day
      t.float :weight
      t.float :percent_body_fat
      t.integer :user_id

      t.timestamps
    end
  end
end

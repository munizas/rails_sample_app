class AddNoteToWeighIn < ActiveRecord::Migration
  def change
    add_column :weigh_ins, :note, :string
  end
end

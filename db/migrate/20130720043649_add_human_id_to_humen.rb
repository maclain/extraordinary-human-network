class AddHumanIdToHumen < ActiveRecord::Migration
  def change
    add_column :humen, :human_id, :integer
  end
end

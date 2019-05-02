class AddOneToDescs < ActiveRecord::Migration[5.2]
  def change
    add_column :descs, :descs_id, :integer
  end
end

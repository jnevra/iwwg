class CreateDescs < ActiveRecord::Migration[5.2]
  def change
    create_table :descs do |t|
      t.string :desc_name

      t.timestamps
    end
  end
end

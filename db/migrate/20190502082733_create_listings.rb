class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :bisnis_name
      t.text :alamat
      t.integer :phone_n
      t.string :url

      t.timestamps
    end
  end
end

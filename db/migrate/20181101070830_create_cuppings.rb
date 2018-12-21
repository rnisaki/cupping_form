class CreateCuppings < ActiveRecord::Migration[5.2]
  def change
    create_table :cuppings do |t|
      t.float :clean_cup
      t.float :sweet
      t.float :acidity
      t.float :mouth_feel
      t.float :flavor
      t.float :after_taste
      t.float :balance
      t.float :over_all
      t.text :flavor_coment
      t.string :origin
      t.string :process
      t.string :shop
      t.text :memo
      t.float :total_point
      t.integer :country_id 

      t.timestamps
    end
  end
end

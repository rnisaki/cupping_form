class CreateCuppings < ActiveRecord::Migration[5.2]
  def change
    create_table :cuppings do |t|
      t.integer :crean_cup
      t.integer :sweet
      t.integer :acidity
      t.integer :mouth_feel
      t.integer :flavor
      t.integer :after_taste
      t.integer :balance
      t.integer :over_all
      t.text :flavor_coment
      t.string :origin
      t.string :process
      t.string :shop
      t.text :memo
      t.integer :total_point
      t.integer :country_id 

      t.timestamps
    end
  end
end

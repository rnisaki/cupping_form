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
      t.string :country
      t.string :origin
      t.string :process
      t.string :shop
      t.text :memo
      t.integer :crean_cup_point
      t.integer :sweet_point
      t.integer :acidity_point
      t.integer :mouth_feel_point
      t.integer :flavor_point
      t.integer :after_taste_point
      t.integer :balance_point
      t.integer :over_all_point
      t.integer :total_point

      t.timestamps
    end
  end
end

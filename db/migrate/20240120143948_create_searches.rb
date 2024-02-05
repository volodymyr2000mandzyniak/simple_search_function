class CreateSearches < ActiveRecord::Migration[7.1]
  def change
    create_table :searches do |t|
      t.string :keyword
      t.string :category
      t.decimal :min_price
      t.decimal :max_price
      t.integer :isdn

      t.timestamps
    end
  end
end

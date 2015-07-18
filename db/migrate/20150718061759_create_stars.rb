class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.integer :num
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :amount
      t.string :unit_prefix

      t.timestamps
    end
  end
end

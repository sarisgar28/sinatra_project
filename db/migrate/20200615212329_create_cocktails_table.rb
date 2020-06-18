class CreateCocktailsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cocktails do |t|
      t.integer :user_id 
      t.string :ingredients 
      t.string :name 
      t.string :private_note 
    end 
  end
end

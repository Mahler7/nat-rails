class CreateSuggestions < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestions do |t|
      t.string :name
      t.integer :votes
      t.datetime :purchase_date
      t.timestamps
    end
  end
end

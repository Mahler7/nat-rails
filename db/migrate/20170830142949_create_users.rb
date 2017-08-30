class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.integer :votes, default: 3
      t.boolean :suggestions, default: false
      t.timestamps
    end
  end
end

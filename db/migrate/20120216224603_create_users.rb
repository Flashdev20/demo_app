class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :status
      t.string :bio
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.decimal :age
      t.string :gender
      t.string :email
      t.string :username
      t.string :password_digest
      t.boolean :family_plan
      t.boolean :property_owner
      t.decimal :properties
      t.boolean :mortgages
      t.decimal :number_mortgages
      t.boolean :own_vehicles
      t.decimal :number_vehicles
      t.boolean :financings      

      t.timestamps
    end
  end
end

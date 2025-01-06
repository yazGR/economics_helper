class CreateFamilyMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :family_members do |t|
      t.integer :user
      t.integer :family_member

      t.timestamps
    end
  end
end

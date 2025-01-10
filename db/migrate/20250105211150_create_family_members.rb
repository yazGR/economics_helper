class CreateFamilyMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :family_members do |t|
      t.references :user
      t.references :family_member

      t.timestamps
    end

    add_foreign_key :family_members, :users, column: :user_id, primary_key: :id
    add_foreign_key :family_members, :users, column: :family_member_id, primary_key: :id
  end
end

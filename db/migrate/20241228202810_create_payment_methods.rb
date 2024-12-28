class CreatePaymentMethods < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_methods do |t|
      t.string :name_fr
      t.string :name_en
      t.string :name_es

      t.timestamps
    end
  end
end

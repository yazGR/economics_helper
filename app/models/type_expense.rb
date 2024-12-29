class TypeExpense < ApplicationRecord
  has_many :poly_incomes, as: :expensetable 
  has_translation :name
end

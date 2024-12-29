class TypeIncome < ApplicationRecord
  has_many :poly_incomes, as: :incometable 
  has_translation :name
end

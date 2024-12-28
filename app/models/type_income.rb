class TypeIncome < ApplicationRecord
  has_many :poly_incomes, as: :incometable 
end

class TypeIncome < ApplicationRecord
  has_many :incomes, as: :incometable 
  has_translation :name
end

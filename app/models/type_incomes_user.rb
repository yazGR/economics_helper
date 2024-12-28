class TypeIncomesUser < ApplicationRecord
  belongs_to :user
  has_many :poly_incomes, as: :incometable 
end

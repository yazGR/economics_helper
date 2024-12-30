class TypeIncomesUser < ApplicationRecord
  belongs_to :user
  has_many :incomes, as: :incometable 
end

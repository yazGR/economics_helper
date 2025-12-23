class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  ROLES = %w[user admin master].freeze

  validates :role, inclusion: { in: ROLES }

  after_initialize :set_default_role, if: :new_record?

  def master?
    role == "master"
  end

  def admin?
    role == "admin"
  end

  def user?
    role == "user"
  end

  def full_name?
    "#{name} #{last_name}"
  end

  private

  def set_default_role
    self.role ||= "user"
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :mobile_number, presence: true,
            :numericality => true,
            :length => { :minimum => 10, :maximum => 11 }
  validates_uniqueness_of :mobile_number
end

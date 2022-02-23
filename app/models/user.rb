class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :payment_histories, dependent: :destroy
  has_many :sms_payments, -> { where(type: 'SmsPaymentHistory') }, dependent: :destroy

  def decrement_sms!
    current_user.update(credited_sms: current_user.credited_sms - 1) if current_user.credited_sms > 0
  end
end

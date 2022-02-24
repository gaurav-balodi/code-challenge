class PaymentCharge < ApplicationRecord
  # Pay::Charge model's table from pay gem is being used here to easily assign foreign_key
  self.table_name = 'pay_charges'
  belongs_to :user, foreign_key: :customer_id

  # this method will be getting removed and the credited_sms will be getting taken care off
  # by the stripe webhooks in the application
  def credited_sms
  	0
  end
end

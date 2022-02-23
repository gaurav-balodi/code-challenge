class SmsPaymentHistory < PaymentHistory
  def payment_type
  	type.eql?('SmsPaymentHistory') ? 'SMS' : self.type
  end
end

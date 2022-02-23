class CreatePaymentHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_histories do |t|
      t.decimal :amount, precision: 10, scale: 2
      t.integer :user_id
      t.string :type
      t.integer :credited_sms

      t.timestamps
    end
    add_index :payment_histories, :user_id
  end
end

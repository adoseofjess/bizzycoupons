class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :discount_type
      t.string :code
      t.integer :value
      t.datetime :ends_at
      t.datetime :starts_at
      t.string :status
      t.integer :minimum_order_amount
      t.integer :usage_limit
      t.integer :applies_to_id
      t.boolean :applies_once
      t.boolean :applies_once_per_customer
      t.string :applies_to_resource
      t.integer :times_used
    end
  end
end

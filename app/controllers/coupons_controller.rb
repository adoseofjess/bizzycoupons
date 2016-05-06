require 'logger'

class CouponsController < ApplicationController
  def home

  end

  def generate
    automate = Automate.new
    create_discount_form = automate.get_create_discount_form(params[:shopify], params[:email], params[:password])
    see_discounts_page = automate.submit_discount_form(create_discount_form, params[:discount_code], params[:discount_type], params[:discount_value], params[:minimum_order_amount])
    #grab value of the new discount we created and show discount
    redirect_to :back
  end

  def show
  end
end

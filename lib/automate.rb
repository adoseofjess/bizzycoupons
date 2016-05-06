class Automate
  def initialize
    @agent = Mechanize.new
    @agent.log = Logger.new "mechanize.log"
  end

  def get_create_discount_form(subdomain, username, password)
    login_url = "https://#{subdomain}.myshopify.com/admin/auth/login"
    login_page  = @agent.get login_url
    login_form = login_page.forms[0]
    login_form.login = username
    login_form.password = password
    home_page = login_form.submit
    discount_page = home_page.links.find {|l| l.text.include?("Discount") }.click
    create_discount_page = discount_page.links.find {|l| l.text.include?("Add discount") }.click
    create_discount_page.forms[0] 
  end

  def submit_discount_form(form, code, type, value, minimum_order_amount)
    code_field = form.field_with(name: "discount[code]") 
    discount_type_field = form.field_with(name: "discount[discount_type]") 
    value_field = form.field_with(name: "discount[value]")
    minimum_order_amount_field = form.field_with(name: "discount[minimum_order_amount]") 
    code_field.value = code
    discount_type_field.value = type
    form.fields.each do |field|
      field.value = value if field.name = "discount[value]"
    end
    @agent.submit(form, form.buttons[1])
  end

end
require 'capybara/dsl'

class BbcHomepage

  HOMEPAGE_URL = 'https://www.bbc.co.uk/'
  SIGN_IN_LINK_ID = "#idcta-link"
  EMAIL_FIELD = "user-identifier-input"
  PASSWORD_FIELD = "password-input"
  SUBMIT_BUTTON = "submit-button"

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @driver = Capybara::Session.new(:chrome)
  end

  def visit_home_page
    @driver.visit(HOMEPAGE_URL)
  end

  def click_sign_in_link
    @driver.find(SIGN_IN_LINK_ID).click
  end

  def fill_in_email_or_username
    @driver.fill_in(EMAIL_FIELD, with: 'nnoor@spartaglobal.com')
  end

  def insert_password
    @driver.fill_in(PASSWORD_FIELD, with: 'iPhone73')
  end

  def click_submit_button
    @driver.find(SUBMIT_BUTTON).click
  end

end

test1 = BbcHomepage.new
test1.visit_home_page
test1.click_sign_in_link
test1.fill_in_email_or_username
test1.insert_password
test1.click_submit_button

sleep 5

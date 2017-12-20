require 'capybara/dsl'

class BbcSignInPage
  include Capybara::DSL

  SIGN_IN_PAGE_URL = 'https://www.bbc.co.uk/signin'
  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  WRONG_PASSWORD_ERROR_TEXT = 'Sorry, we can’t find an account with that username. If you\'re over 13, try your email address instead or '
  WRONG_PASSWORD_ERROR_ID = 'form-message-password'
  REGISTER_LINK_TEXT = 'Register now'
  SUBMIT_BUTTON_ID = 'submit-button'
  DOB_DAY_ID = "day-input"
  DOB_MONTH_ID = "month-input"
  DOB_YEAR_ID = "year-input"
  POSTCODE_INPUT_ID = "postcode-input"
  GENDER_INPUT_ID = "gender-input"


  def visit_register_page
    visit(SIGN_IN_PAGE_URL)
  end

  def username_field
    find_field(:id, USERNAME_FIELD_ID)
  end

  def fill_in_username(username)
    fill_in(USERNAME_FIELD_ID, with: username)
  end

  def password_field
    find_field(:id, PASSWORD_FIELD_ID)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def postcode_field
    find_field(:id, POSTCODE_INPUT_ID)
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_INPUT_ID, with: postcode)
  end

  def gender_field
    find_field(:id, GENDER_INPUT_ID)
  end

  def select_gender(gender)
    select(gender, from: GENDER_INPUT_ID)
  end

  def sign_in_button
    find_button(SUBMIT_BUTTON_ID)
  end

  def click_sign_in_button
    sign_in_button.click
  end

  def register_link
    find_link(REGISTER_LINK_TEXT)
  end

  def click_register_link
    register_link.click
    # click_link(REGISTER_LINK_TEXT)
  end

  def incorrect_password_text
    find(:id, WRONG_PASSWORD_ERROR_ID).text
  end

  def find_day_field
    find_field(:id, DOB_DAY_ID)
  end

  def find_month_field
    find_field(:id, DOB_MONTH_ID)
  end

  def find_year_field
    find_field(:id, DOB_YEAR_ID)
  end

  def fill_in_dob_day(day)
    fill_in(DOB_DAY_ID, with: day )
  end

  def fill_in_dob_month(month)
    fill_in(DOB_MONTH_ID, with: month )
  end

  def fill_in_dob_year(year)
    fill_in(DOB_YEAR_ID, with: year )
  end

  def select_opt(opt)
    find(:xpath, ".//label[@for='#{opt}']/div/div").click
  end

  def find_success_signin_message
    find('h1 span').text
  end


end

require 'selenium-webdriver'

class SeleniumQatoolsform

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME_FIELD_NAME = "firstname"
  LAST_NAME_FIELD_NAME = "lastname"
  SELECT_SEX_FIELD_NAME = "sex-0"
  SELECT_EXPERIENE_FIELD = "exp-0"
  SELECT_DATE_FIELD = "datepicker"
  SELECT_PROFESSION_FIELD = "profession-0"
  SELECT_PHOTO_FIELD = "photo"

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def first_name(text)
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME).send_keys(text)
  end

  def last_name(text)
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME).send_keys(text)
  end

  def select_sex
    @chrome_driver.find_element(:id, SELECT_SEX_FIELD_NAME).click
  end

  def select_experience
    @chrome_driver.find_element(:id, SELECT_EXPERIENE_FIELD).click
  end

  def date_field(text)
    @chrome_driver.find_element(:id, SELECT_DATE_FIELD).send_keys(text)
  end

  def select_profession
    @chrome_driver.find_element(:id, SELECT_PROFESSION_FIELD).click
  end

  def select_image(text)
    @chrome_driver.find_element(:id, SELECT_PHOTO_FIELD).send_keys(text)
  end

end

x = SeleniumQatoolsform.new
x.visit_practice_form
x.first_name("Narullah")
x.last_name("Noor")
# sleep 4
x.select_sex
# sleep 4
x.select_experience
# sleep 4
x.date_field('18.12.17')
# sleep 4
x.select_profession
sleep 4
x.select_image("/Downloads/red-circle.png")
sleep 4

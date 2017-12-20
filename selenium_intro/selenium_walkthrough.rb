require 'selenium-webdriver'

#define which web browser we are going to use
chrome_driver = Selenium::WebDriver.for :chrome

chrome_driver.get('http://toolsqa.com/automation-practice-form/')

chrome_driver.find_element(:name, 'firstname').displayed?

chrome_driver.find_element(:name, 'firstname').send_keys('Narullah')

chrome_driver.find_element(:name, 'lastname').send_keys('Noor')

sleep 4

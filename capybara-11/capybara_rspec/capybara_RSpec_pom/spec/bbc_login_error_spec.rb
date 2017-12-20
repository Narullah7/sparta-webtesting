require 'spec_helper'

describe 'Incorrect user details produces valid error' do

  context 'it should respond with the correct error when incorrect details are input' do

    # it 'should produce an error when inputting an incorrect password to a valid account' do
      # @bbc_site = BbcSite.new
    #   @bbc_site.bbc_homepage.visit_home_page
    #   @bbc_site.bbc_homepage.click_sign_in_link
    #   @bbc_site.bbc_sign_in_page.fill_in_username('nnoor@spartaglobal.com')
    #   @bbc_site.bbc_sign_in_page.fill_in_password('iPhone71')
    #   @bbc_site.bbc_sign_in_page.click_sign_in_button
    #   expect(@bbc_site.bbc_sign_in_page.incorrect_password_text).to eq( "Uh oh, that password doesn’t match that account. Please try again.")
    # end

    # it "Should successfully sign you in when you enter a valid email and password" do
    #   @bbc_site = BbcSite.new
    #   @bbc_site.bbc_homepage.visit_home_page
    #   @bbc_site.bbc_homepage.click_sign_in_link
    #   @bbc_site.bbc_sign_in_page.fill_in_username('nnoor@spartaglobal.com')
    #   @bbc_site.bbc_sign_in_page.fill_in_password('iPhone73')
    #   @bbc_site.bbc_sign_in_page.click_sign_in_button
    # #   expect(@bbc_site.current_url).to eq('https://www.bbc.co.uk/')
    # end

    it 'it should respond with the correct text when you makw an account' do
      @bbc_site = BbcSite.new
      @bbc_site.bbc_homepage.visit_home_page
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_sign_in_page.click_register_link
      @bbc_site.bbc_sign_in_page.fill_in_dob_day('01')
      @bbc_site.bbc_sign_in_page.fill_in_dob_month('01')
      @bbc_site.bbc_sign_in_page.fill_in_dob_year('1994')
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      @bbc_site.bbc_sign_in_page.fill_in_username("football@hotmail.com")
      @bbc_site.bbc_sign_in_page.fill_in_password("nukester786")
      @bbc_site.bbc_sign_in_page.fill_in_postcode("NW9 8DU")
      @bbc_site.bbc_sign_in_page.select_gender("Male")
      @bbc_site.bbc_sign_in_page.select_opt("optOut")
      @bbc_site.bbc_sign_in_page.click_sign_in_button
      expect(@bbc_site.bbc_sign_in_page.find_success_signin_message).to eq("Thanks. You're now signed in.")

      sleep 4
    end

  end

end

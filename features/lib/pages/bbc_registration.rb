require 'capybara/dsl'

class BBC_Registration

  include Capybara::DSL

  # Constants
  OVER_13_LABEL = '13 or over'
  DAY_INPUT_NAME = 'dateOfBirthDay'
  MONTH_INPUT_NAME = 'dateOfBirthMonth'
  YEAR_INPUT_NAME = 'dateOfBirthYear'
  CONTINUE_ID = '#submit-button'
  INPUT_EMAIL_NAME = 'email'
  INPUT_PASSWORD_NAME = 'password'
  INPUT_POSTCODE_NAME = 'postcode'
  GENDER_INPUT_NAME = 'gender'
  EMAIL_UPDATES_CLASS = '.button__text-wrapper'
  CLICK_REGISTRATION_ID = '#submit-button'
  CLICK_CONTINUE_CLASS = 'Continue'
  ERROR_BOX_ID = '#form-message-dateOfBirth'
  ERROR_EMAIL_ID = '#form-message-email'
  ERROR_PASSWORD_ID = '#form-message-password'
  ERROR_POSTCODE_ID = '#form-message-postcode'
  ERROR_GENDER_ID = '#form-message-gender'
  ERROR_OPTIN_ID = '#form-message-marketingOptIn'

  def click_13_or_over
    click_link(OVER_13_LABEL)
    sleep 1
  end

  def input_dob
    fill_in(DAY_INPUT_NAME, :with => '6')
    fill_in(MONTH_INPUT_NAME, :with => '11')
    fill_in(YEAR_INPUT_NAME, :with => '1992')
    sleep 1
  end

  def submit_dob
    find(CONTINUE_ID).click
    sleep 1
  end

  def input_email(email)
    fill_in(INPUT_EMAIL_NAME, :with => email)
    sleep 1
  end

  def input_password
    fill_in(INPUT_PASSWORD_NAME, :with => 'password1!')
    sleep 1
  end

  def input_postcode
    fill_in(INPUT_POSTCODE_NAME, :with => 'M15SX')
    sleep 1
  end

  def select_gender
    select 'Male', from: GENDER_INPUT_NAME
    sleep 1
  end

  def no_thanks_email
    all(EMAIL_UPDATES_CLASS)[1].click
    sleep 1
  end

  def click_registration
    find(CLICK_REGISTRATION_ID).click
    sleep 1
  end

  def check_signup
    has_content?('Thanks. You\'re now signed in.')
  end

  def click_continue
    click_link(CLICK_CONTINUE_CLASS)
    sleep 2
  end

  def input_dob_invalid_day
    fill_in(DAY_INPUT_NAME, :with => '70')
    fill_in(MONTH_INPUT_NAME, :with => '11')
    fill_in(YEAR_INPUT_NAME, :with => '1992')
    sleep 1
  end

  def input_dob_invalid_month
    fill_in(DAY_INPUT_NAME, :with => '7')
    fill_in(MONTH_INPUT_NAME, :with => '11@')
    fill_in(YEAR_INPUT_NAME, :with => '1992')
    sleep 1
  end

  def input_dob_invalid_year
    fill_in(DAY_INPUT_NAME, :with => '7')
    fill_in(MONTH_INPUT_NAME, :with => '11')
    fill_in(YEAR_INPUT_NAME, :with => '170023')
    sleep 1
  end

  def input_dob_unreasonable_year
    fill_in(DAY_INPUT_NAME, :with => '7')
    fill_in(MONTH_INPUT_NAME, :with => '11')
    fill_in(YEAR_INPUT_NAME, :with => '1700')
    sleep 1
  end

  def input_dob_invalid_day_month
    fill_in(DAY_INPUT_NAME, :with => '7%')
    fill_in(MONTH_INPUT_NAME, :with => '11@')
    fill_in(YEAR_INPUT_NAME, :with => '1992')
    sleep 1
  end

  def input_dob_invalid_day_year
    fill_in(DAY_INPUT_NAME, :with => '7%')
    fill_in(MONTH_INPUT_NAME, :with => '11')
    fill_in(YEAR_INPUT_NAME, :with => '1992Z')
    sleep 1
  end

  def input_dob_invalid_month_year
    fill_in(DAY_INPUT_NAME, :with => '7')
    fill_in(MONTH_INPUT_NAME, :with => '11TU')
    fill_in(YEAR_INPUT_NAME, :with => '1992Z')
    sleep 1
  end

  def input_dob_invalid_data
    fill_in(DAY_INPUT_NAME, :with => '7^$%')
    fill_in(MONTH_INPUT_NAME, :with => '11TU')
    fill_in(YEAR_INPUT_NAME, :with => '1992Z')
    sleep 1
  end

  def check_error_box
    find(ERROR_BOX_ID).visible?
  end

  def email_error_box
    find(ERROR_EMAIL_ID).visible?
  end

  def password_error_box
    find(ERROR_PASSWORD_ID).visible?
  end

  def postcode_error_box
    find(ERROR_POSTCODE_ID).visible?
  end

  def gender_error_box
    find(ERROR_GENDER_ID).visible?
  end

  def optIn_error_box
    find(ERROR_OPTIN_ID).visible?
  end

  def day_error
    has_content?('Oops, that day doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def month_error
    has_content?('Oops, that month doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def year_error
    has_content?('Oops, that year doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def unreasonable_year_error
    has_content?('Sorry, that year doesn’t seem right. Please try again.')
  end

  def day_month_error
    has_content?('Oops, that day and month don\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def day_year_error
    has_content?('Oops, that day and year don\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def month_year_error
    has_content?('Oops, that month and year don\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def dob_data_error
    has_content?('Oops, that date doesn\'t look right. Make sure it\'s a real date written as DD-MM-YYYY e.g. the 5th of June 2009 is 05-06-2009.')
  end

  def something_missing_error
    has_content?('Something\'s missing. Please check and try again.')
  end

end

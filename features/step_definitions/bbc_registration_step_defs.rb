Given("I access the registration page") do
  @bbc_site_home = BBC_Site.new.bbc_homepage
  @bbc_site_home.visit_home_page
  @bbc_site_home.click_sign_in_link
  @bbc_site_home.click_register_link
end

Given("I proceed to DoB page") do
  @bbc_site_register = BBC_Site.new.bbc_registration
  @bbc_site_register.click_13_or_over
end

Given("I input an invalid day") do
  @bbc_site_register.input_dob_invalid_day
end

When("I click continue") do
  @bbc_site_register.submit_dob
end

Then("I recieve an invalid day error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.day_error).to be true
end

Given("I input an invalid month") do
  @bbc_site_register.input_dob_invalid_month
end

Then("I recieve an invalid month error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.month_error).to be true
end

Given("I input an invalid year") do
  @bbc_site_register.input_dob_invalid_year
end

Then("I recieve an invalid year error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.year_error).to be true
end

Given("I input an unreasonable year") do
  @bbc_site_register.input_dob_unreasonable_year
end

Then("I recieve an unreasonable year error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.unreasonable_year_error).to be true
end

Given("I input an invalid day and month") do
  @bbc_site_register.input_dob_invalid_day_month
end

Then("I recieve an invalid day and month error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.day_month_error).to be true
end

Given("I input an invalid day and year") do
  @bbc_site_register.input_dob_invalid_day_year
end

Then("I recieve an invalid day and year error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.day_year_error).to be true
end

Given("I input an invalid month and year") do
  @bbc_site_register.input_dob_invalid_month_year
end

Then("I recieve an invalid month and year error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.month_year_error).to be true
end

Given("I input an invalid DoB data") do
  @bbc_site_register.input_dob_invalid_data
end

Then("I recieve an invalid DoB data error") do
  expect(@bbc_site_register.check_error_box).to be true
  expect(@bbc_site_register.dob_data_error).to be true
end

Given("I proceed through DoB page") do
  @bbc_site_register = BBC_Site.new.bbc_registration
  @bbc_site_register.click_13_or_over
  @bbc_site_register.input_dob
  @bbc_site_register.submit_dob
end

When("I click register") do
  @bbc_site_register.click_registration
end

Then("I recieve several something is missing errors") do
  expect(@bbc_site_register.email_error_box).to be true
  expect(@bbc_site_register.password_error_box).to be true
  expect(@bbc_site_register.postcode_error_box).to be true
  expect(@bbc_site_register.gender_error_box).to be true
  expect(@bbc_site_register.optIn_error_box).to be true
  expect(@bbc_site_register.something_missing_error).to be true
end

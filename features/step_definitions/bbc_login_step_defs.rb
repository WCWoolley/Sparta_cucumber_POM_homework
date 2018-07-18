Given("I access the bbc login page") do
  @bbc_site = BBC_Site.new
  @bbc_site.bbc_homepage.visit_home_page
  @bbc_site.bbc_homepage.click_sign_in_link
end

Given("I input incorrect username details") do
  @bbc_site.bbc_login.fill_unregistered_email
end

Given("I input incorrect password details") do
  @bbc_site.bbc_login.fill_wrong_password
end

When("I try to login") do
  @bbc_site.bbc_login.click_submit
end

Then("I receive an invalid email error") do
  expect(@bbc_site.bbc_login.check_blank_email).to be true
  expect(@bbc_site.bbc_login.invalid_email_error).to be true
end

Given("I input valid username details") do
  @bbc_site.bbc_login.fill_email
end

Then("I receive an incorrect password error") do
  expect(@bbc_site.bbc_login.check_blank_password).to be true
  expect(@bbc_site.bbc_login.incorrect_password_error).to be true
end

Given("I input no username details") do
  @bbc_site.bbc_login.click_email
end

Given("I input no password details") do
  @bbc_site.bbc_login.click_password
end

Then("I receive a missing error") do
  expect(@bbc_site.bbc_login.check_blank_email).to be true
  expect(@bbc_site.bbc_login.check_blank_password).to be true
  expect(@bbc_site.bbc_login.check_details_mismatch).to be true
  expect(@bbc_site.bbc_login.missing_error).to be true
  expect(@bbc_site.bbc_login.mismatch_error).to be true
end

Given("I input short username details") do
  @bbc_site.bbc_login.fill_short_email
end

Then("I receive a short email error") do
  expect(@bbc_site.bbc_login.short_email_error).to be true
end

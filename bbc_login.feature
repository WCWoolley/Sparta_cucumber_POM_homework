Feature: BBC Login

  Scenario: Inputting incorrect user credentials shows an error
    Given I access the bbc login page
      And I input incorrect username details
      And I input incorrect password details
    When I try to login
    Then I receive an invalid email error

  # Scenario: Inputting valid username and invalid password credentials shows an error
  #   Given I access the bbc login page
  #     And I input valid username details
  #     And I input incorrect password details
  #   When I try to login
  #   Then I receive an incorrect password error

  Scenario: Inputting blank user credentials shows an error
    Given I access the bbc login page
      And I input no username details
      And I input no password details
    When I try to login
    When I try to login
    Then I receive a missing error

  Scenario: Inputting short username credentials shows an error
    Given I access the bbc login page
      And I input short username details
    When I try to login
    Then I receive a short email error

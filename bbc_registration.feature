Feature: BBC Registration

  Scenario: Inputting invalid birth day
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid day
    When I click continue
    Then I recieve an invalid day error

  Scenario: Inputting invalid birth month
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid month
    When I click continue
    Then I recieve an invalid month error

  Scenario: Inputting invalid birth year
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid year
    When I click continue
    Then I recieve an invalid year error

  Scenario: Inputting unreasonable birth year
    Given I access the registration page
      And I proceed to DoB page
      And I input an unreasonable year
    When I click continue
    Then I recieve an unreasonable year error

  Scenario: Inputting invalid birth day and month
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid day and month
    When I click continue
    Then I recieve an invalid day and month error

  Scenario: Inputting invalid birth day and year
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid day and year
    When I click continue
    Then I recieve an invalid day and year error

  Scenario: Inputting invalid birth month and year
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid month and year
    When I click continue
    Then I recieve an invalid month and year error

  Scenario: Inputting invalid birth data
    Given I access the registration page
      And I proceed to DoB page
      And I input an invalid DoB data
    When I click continue
    Then I recieve an invalid DoB data error

  Scenario: Inputting invalid email address
    Given I access the registration page
      And I proceed through DoB page
    When I click register
    Then I recieve several something is missing errors

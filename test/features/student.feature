Feature: Text filter
  Scenario: Search using input.search field
    When I browse to the "/"
    When I enter "and" into "input.search" field
    Then the css element "td:nth-of-type(1)" should contain the text "Candace"
    Then I should see "Candace" in "firstName" column in row "1" of "student.table" table

    When I enter "enc" into "input.search" field
    Then the css element "td:nth-of-type(2)" should contain the text "Spencer"
    Then I should see "Spencer" in "lastName" column in row "1" of "student.table" table

    When I enter "18" into "input.search" field
    Then the css element "td:nth-of-type(3)" should contain the text "18"
    Then I should see "18" in "age" column in row "1" of "student.table" table

  Scenario: Search by first name
    When I browse to the "/"
    When I enter "oo" into "input.first" field
    Then the css element "td:nth-of-type(1)" should contain the text "Good"
    Then I should see "Good" in "firstName" column in row "1" of "student.table" table

  Scenario: Search by last name
    When I browse to the "/"
    When I enter "eve" into "input.last" field
    Then the css element "td:nth-of-type(2)" should contain the text "Stevenson"
    Then I should see "Stevenson" in "lastName" column in row "1" of "student.table" table

  Scenario: Search by age
    When I browse to the "/"
    When I enter "22" into "input.age" field
    Then the css element "td:nth-of-type(3)" should contain the text "22"
    Then I should see "22" in "age" column in row "1" of "student.table" table

  Scenario: Search by mail
    When I browse to the "/"
    When I enter ".uk" into "input.email" field
    Then the css element "td:nth-of-type(4)" should contain the text "maxine.stevenson@undefined.co.uk"
    Then I should see "maxine.stevenson@undefined.co.uk" in "email" column in row "1" of "student.table" table

  Scenario: Search by phone
    When I browse to the "/"
    When I enter "994" into "input.phone" field
    Then the css element "td:nth-of-type(5)" should contain the text "+1 (994) 534-3669"
    Then I should see "+1 (994) 534-3669" in "phone" column in row "1" of "student.table" table


Feature: Create Login

  Background:
    * def body = read("classpath://json/CreateLogin.json")

  Scenario: verify user can create Login
    Given url host
    And path '/login'
    And request body
    When method post
    Then status 200
    And print response
Feature: Create ResQes Response

  Background:
    * def body = read("classpath://json//createResQes.json")

  Scenario: verify user can create a response
    Given url host
    And path "/users"
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request body
    When method post
    Then status 201
    Then print response

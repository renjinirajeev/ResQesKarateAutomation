Feature: Delete Response

  Background:
    * def responseOfCreateResQes = call read("classpath://features/CreateResQes.feature")

  Scenario: Verify user can delete response
    Given url host
    And path '/users/'+responseOfCreateResQes.response.id
    When method delete
    Then status 204
    And print response
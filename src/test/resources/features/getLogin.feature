Feature: Get Login

  Background:
    * def responseOfCreateResQes = call read("classpath://features/CreateResQes.feature")

  Scenario: verify user can retrieve Login details
    Given url host
    And path '/users?page='+responseOfCreateResQes.response.id
    When method get
    Then status 200
    Then print response


#  //div[@class='inventory_list']/div/following-sibling::div
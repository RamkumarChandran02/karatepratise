Feature: Get API feature

  Scenario: get user details

    Given url 'https://gorest.co.in/public/v1/users'
    And path '2923'
    When method GET
    Then status 200
    * print response
    * def jsonResponse1 = response
    * print jsonResponse1
    * def actualName = jsonResponse1.data.name
    * def actualId = jsonResponse1.data.id
    * def actualEmail = jsonResponse1.data.email
    * def actualGender = jsonResponse1.data.gender
    * def actualStatus = jsonResponse1.data.status
    * print actualName
    * match actualName == 'Meghnath Malik'
    * match actualId == 2923
    * match actualEmail == 'malik_meghnath@sipes.info'
    * match actualGender == 'female'
    * match actualStatus == 'active'

  Scenario: verify user not found

    Given url 'https://gorest.co.in/public/v1/users'
    And path '291'
    When method GET
    Then status 404
    * print response
    * def jsonResponse2 = response
    * print jsonResponse2
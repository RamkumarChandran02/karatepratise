Feature: GET API Feature

Scenario: get user details

    * def tokenID = '19fa41387c63d2f4ca93265ebc0f148614dbad22bad6c417f7c9eff01ab7ae35'
    * print tokenID

    Given header Authorization = 'Bearer' + tokenID
    Given url 'https://gorest.co.in/public/v2/users'
    And path '2971'
    When method GET
    Then status 200

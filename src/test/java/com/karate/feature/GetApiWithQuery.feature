Feature: GET API with Query Parameters 

Scenario: get all active users

    * def query = {status:'active',gender:'female',id:5114469}

    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response


Scenario: get all active users count

    * def query = {status:'active'}

    Given url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * def jsonResponse = response
    * print jsonResponse
    * print count = jsonResponse.data.length
    * print count
    * match count == 10

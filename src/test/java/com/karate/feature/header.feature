Feature: GET API  header feature 

Scenario: pass user request with headers method 1

    Given header Content-Type = 'application/json'
    And header Accept-Encoding = 'gzip,deflate'

    * def query = {status:'active',gender:'female',id:2923}

    When url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response

Scenario: pass user request with headers with method 2

    * def request_headers = {Content-Type : 'application/json', Accept-Encoding : 'gzip,deflate'}

    Given headers request_headers

    * def query = {status:'active',gender:'female',id:2923}
    
    When url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response

Scenario: pass user request with headers with method 3

    * configure headers = {Content-Type : 'application/json', Accept-Encoding : 'gzip,deflate'}

    * def query = {status:'active',gender:'female',id:2923}
    
    When url 'https://gorest.co.in/public/v1/users'
    And params query
    When method GET
    Then status 200
    * print response
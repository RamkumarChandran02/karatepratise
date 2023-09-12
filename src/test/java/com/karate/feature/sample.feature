Feature: print hello world feature

  Scenario: Hello World scenario

    * print 'hello world'
    * print 'hello Ram'
    * print 'hello Kumar'

  Scenario: What is Your Pocket Balance

    * def amount = 5000
    * def fee = 500
    * def tax = 25
    * print 'total amount -> ' +(amount - fee - tax)
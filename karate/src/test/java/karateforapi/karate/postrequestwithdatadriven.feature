Feature: Post request using karate - data driven

Background:

And print data
Given url 'http://dummy.restapiexample.com'


Scenario Outline: Create user details

Given path '/api/v1/create'
And request {"name":<name>,"salary":<salary>,"age":<age>}
When method POST
Then status 200
Then print 'response1==>', response

Examples:

#|read('../../data/testData.csv')|

|name|salary|age|
|kumar|2323|22|
|narsh|2312|33|
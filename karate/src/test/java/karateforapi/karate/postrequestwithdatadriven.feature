Feature: Post request using karate - data driven

Background:
* configure ssl = true
Given url 'http://dummy.restapiexample.com'



Scenario Outline: Create user details

Given path '/api/v1/create'
And request {"name":<name>,"salary":<salary>,"age":<age>}
When method POST
Then status 200
Then print 'response1==>', response

Examples:

|read('../../data/testData.csv')|

#|name|salary|age|
#|user1|2323|22|
#|user2|2312|33|
#|user3|10000|44|
#|user4|12222|55|
#|user5|13333|22|
#|user6|14444|66|
#|user7|15555|77|
#|user8|16666|88|
#|user9|17777|99|
#|user10|1888|55|


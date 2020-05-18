Feature: Api testing using Karate framework

Background:

* def expectedoutput = read('../../data/result1.json')
* configure ssl = true

	Scenario:Api test for request user1 details

	Given url "https://reqres.in/api/users/2"
	And cookie date = 'new'
	When method GET
	Then status 200
	Then print response
	And match response == expectedoutput[0]
	
	
	Scenario:Api test for request user2 details
	
	Given url "https://reqres.in/api/users/3"
	When method GET
	Then status 200
	Then print response
	And match response == expectedoutput[1]